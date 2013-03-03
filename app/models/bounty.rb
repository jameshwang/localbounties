class Bounty < ActiveRecord::Base
  attr_accessible :description,
                  :due_date,
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

  after_save :update_firebase

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
