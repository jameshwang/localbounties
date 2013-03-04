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
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, 
                  :city, 
                  :status, 
                  :stripe_id, 
                  :stripe_tok, 
                  :user_pic,
                  :firebase_token

  has_many :owned_bounties, :class_name => "Bounty", :foreign_key => "owner_id"
  has_many :hunted_bounties, :class_name => "Bounty", :foreign_key => "hunter_id"

  # before_create :generate_firebase_token

  private

  def generate_firebase_token
    begin
      firebase_token = SecureRandom.urlsafe_base64
    end while User.where(:firebase_token => firebase_token).exists?
    self.firebase_token = firebase_token
  end

  def firebase_json
    { 'empty' => false }
  end

  def firebase_add_by_user(status)
    Firebase.base_uri = ENV['FIREBASE_URL']
    Firebase.set("users/#{id}/bounties/#{status}/0", firebase_json)
  end
end
