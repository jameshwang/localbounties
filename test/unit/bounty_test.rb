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

require 'test_helper'

class BountyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
