# == Schema Information
#
# Table name: bounties
#
#  id                :integer         not null, primary key
#  owner_id          :integer
#  hunter_id         :integer
#  title             :string(255)
#  description       :text
#  due_date          :datetime
#  duration          :string(255)
#  latitude          :float
#  longitude         :float
#  verification      :text
#  verification_type :string(255)
#  status            :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#  reward            :integer
#

# == Schema Information
#
# Table name: bounties
#
#  id                :integer         not null, primary key
#  owner_id          :integer
#  hunter_id         :integer
#  title             :string(255)
#  description       :text
#  due_date          :datetime
#  duration          :string(255)
#  reward             :integer
#  latitude          :float
#  longitude         :float
#  verification      :text
#  verification_type :string(255)
#  status            :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#
require 'firebase'

class Bounty < ActiveRecord::Base
  attr_accessible :description,
                  :duration,
                  :hunter_id,
                  :latitude,
                  :longitude,
                  :owner_id,
                  :reward,
                  :status,
                  :title,
                  :verification_type,
                  :verification,
                  :accepted_at

  belongs_to :hunter, :class_name => "User"
  belongs_to :owner, :class_name => "User"

  validates :owner, :presence => true

  before_save :update_due_date
  # after_update :update_firebase
  after_create :make_available

  def make_available
    update_attribute(:status, 'available')

    firebase_add_by_bounty
    firebase_add_by_user(owner.firebase_token, "available-issued")
  end

  def self.make_all_available
    self.all.each do |bounty|
      bounty.available
    end
  end

  # POST bounties/:bounty_id/accept
  # bounties_controller#accept
  def accept(user)
    # update rails status attribute
    update_attribute(:status, 'in_progress')
    update_attribute(:hunter_id, user.id)
    update_attribute(:accepted_at, DateTime.now)

    # update firebase
    # remove bounty from global available and owner available-issued bounties
    firebase_delete_by_bounty
    firebase_delete_by_user(owner.firebase_token, "available-issued")
    
    # create new bounty for owner in-progress
    firebase_add_by_user(hunter.firebase_token, "in-progress")

    # create new issued-bounty for hunter in-progress-issued
    firebase_add_by_user(owner.firebase_token, "in-progress-issued")
  end

  def complete
    update_attribute(:status, 'completed')

    # update firebase
    # remove the owner and hunter in progress bounties
    firebase_delete_by_user(hunter.firebase_token, "in-progress")
    firebase_delete_by_user(owner.firebase_token, "in-progress-issued")

    # create new bounty for owner completed
    firebase_add_by_user(hunter.firebase_token, "completed")

    #create new issued-bounty for hunter completed
    firebase_add_by_user(owner.firebase_token, "completed-issued")
  end

  def reset_status
    firebase_delete_by_user(owner.firebase_token, "in-progress")
    firebase_delete_by_user(owner.firebase_token, "completed")

    firebase_delete_by_user(hunter.firebase_token, "in-progress-issued")
    firebase_delete_by_user(hunter.firebase_token, "completed-issued")

    update_attribute(:status, nil)
    update_attribute(:hunter_id, nil)
  end

  private

  def firebase_json
    json = {
        :id => id,
        :description => description,
        :due_date => due_date,
        :duration => duration,
        :hunter_id => hunter_id,
        :latitude => latitude,
        :longitude => longitude,
        :owner_id => owner_id,
        :reward => reward,
        :status => status,
        :title => title,
        :verification_type => verification_type,
        :verification => verification,
        :accepted_at => accepted_at,
        :created_at => created_at
    }

    unless owner.nil?
      json[:owner] = {
        :name => owner.name,
        :avatar => owner.avatar,
        :ranked => 'Peon'
      }
    end
    json
  end

  def firebase_add_by_bounty
    Firebase.base_uri = ENV['FIREBASE_URL']
    Firebase.set("bounties/available/bounty-#{id}", firebase_json)
  end

  def firebase_add_by_user(firebase_token, status)
    Firebase.base_uri = ENV['FIREBASE_URL']
    Firebase.set("users/#{firebase_token}/bounties/#{status}/bounty-#{id}", firebase_json)
  end

  def firebase_delete_by_user(firebase_token, status)
    Firebase.base_uri = ENV['FIREBASE_URL']
    Firebase.delete("users/#{firebase_token}/bounties/#{status}/bounty-#{id}")
  end

  def firebase_delete_by_bounty
    Firebase.base_uri = ENV['FIREBASE_URL']
    Firebase.delete("bounties/available/bounty-#{id}")
  end

  def update_due_date
    self.due_date = DateTime.now + duration.to_f.hours
  end

  def create_firebase
    Firebase.base_uri = ENV['FIREBASE_URL']

    firebase_response = Firebase.set("bounties/bounty-#{id}", { :id => id,
                              :description => description,
                              :due_date => due_date,
                              :duration => duration,
                              :hunter_id => hunter_id,
                              :latitude => latitude,
                              :longitude => longitude,
                              :owner_id => owner_id,
                              :reward => reward,
                              :status => status,
                              :title => title,
                              :verification_type => verification_type,
                              :verification => verification })


  end

  def update_firebase
    Firebase.base_uri = ENV['FIREBASE_URL']
    firebase_response = Firebase.set("bounties/bounty-#{id}", { :id => id,
                              :description => description,
                              :due_date => due_date,
                              :duration => duration,
                              :hunter_id => hunter_id,
                              :latitude => latitude,
                              :longitude => longitude,
                              :owner_id => owner_id,
                              :reward => reward,
                              :status => status,
                              :title => title,
                              :verification_type => verification_type,
                              :verification => verification })

    # Firebase.base_uri = ENV['FIREBASE_URL'] + "/queries/by_status"
    # Firebase.push(status, JSON.parse(firebase_response.response.body)['name'])
  end
end
