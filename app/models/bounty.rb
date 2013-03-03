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
#  price             :integer
#  latitude          :float
#  longitude         :float
#  verification      :text
#  verification_type :string(255)
#  status            :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

class Bounty < ActiveRecord::Base
  attr_accessible :description,
                  :duration,
                  :hunter_id,
                  :latitude,
                  :longitude,
                  :owner_id,
                  :price,
                  :status,
                  :title,
                  :verification_type,
                  :verification

  before_save :update_due_date
  after_save :update_firebase

  private

  def update_due_date
    self.due_date = DateTime.now + duration.to_f.hours
  end

  def update_firebase
    require 'firebase'
    Firebase.base_uri = 'https://localbounties.firebaseio.com'
    Firebase.push("Bounty", { :description => description,
                             :due_date => due_date,
                             :duration => duration,
                             :hunter_id => hunter_id,
                             :latitude => latitude,
                             :longitude => longitude,
                             :owner_id => owner_id,
                             :price => price,
                             :status => status,
                             :title => title,
                             :verification_type => verification_type,
                             :verification => verification
    })
  end
end
