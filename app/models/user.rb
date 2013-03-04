# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  user_pic               :string(255)
#  stripe_id              :string(255)
#  stripe_tok             :string(255)
#  city                   :string(255)
#  status                 :string(255)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#  name                   :string(255)
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  firebase_token         :string(255)
#  provider               :string(255)
#  uid                    :string(255)
#  oauth_token            :string(255)
#  oauth_expires_at       :datetime
#

class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :token_authenticatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, 
                  :city, 
                  :status, 
                  :stripe_id, 
                  :stripe_tok, 
                  :user_pic,
                  :firebase_token,
                  :avatar

  has_many :owned_bounties, :class_name => "Bounty", :foreign_key => "owner_id"
  has_many :hunted_bounties, :class_name => "Bounty", :foreign_key => "hunter_id"

  # before_create :generate_firebase_token

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.first_name 
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.email = auth.info.email
      user.avatar = auth.info.image
      user.save!
    end
  end

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
