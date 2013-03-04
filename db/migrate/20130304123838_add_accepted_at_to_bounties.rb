class AddAcceptedAtToBounties < ActiveRecord::Migration
  def change
    add_column :bounties, :accepted_at, :string
  end
end
