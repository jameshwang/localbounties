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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
