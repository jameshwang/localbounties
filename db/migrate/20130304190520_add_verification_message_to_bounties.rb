class AddVerificationMessageToBounties < ActiveRecord::Migration
  def change
    add_column :bounties, :verification_message, :string
  end
end
