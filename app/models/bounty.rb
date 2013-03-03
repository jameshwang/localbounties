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
end
