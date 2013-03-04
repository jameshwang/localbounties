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
                  :verification

  belongs_to :hunter, :class_name => "User"
  belongs_to :owner, :class_name => "User"

  before_save :update_due_date
  after_update :update_firebase
  after_create :create_firebase

  # POST bounties/:bounty_id/claim
  # bounties_controller#claim
  def claim(user)
    # update rails status attribute
    update_attribute(:status, 'in_progress')

    # update firebase
    # remove the old ... go into bountis/available- Bounty-id

    # create new one at
    # users/:user_id/bounties/in_progress
    
  end

  def complete
  end

  private

  def update_due_date
    self.due_date = DateTime.now + duration.to_f.hours
  end

  def create_firebase
    Firebase.base_uri = ENV['FIREBASE_URL']
    # Firebase.push("Bounty-#{id}", { :id => id})
    Firebase.set("Bounty-#{id}", { :id => id,
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
    Firebase.set("Bounty-#{id}", { :id => id,
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
end
