# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  user_pic   :string(255)
#  stripe_id  :string(255)
#  stripe_tok :string(255)
#  city       :string(255)
#  status     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  name       :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name, :city, :status, :stripe_id, :stripe_tok, :user_pic

  has_many :owned_bounties, :class_name => "Bounty", :foreign_key => "owner_id"
  has_many :hunted_bounties, :class_name => "Bounty", :foreign_key => "hunter_id"
end
