class RenamePriceToRewardOnBounty < ActiveRecord::Migration
  def up
  	remove_column :bounties, :price
  	add_column :bounties, :reward, :integer
  end

  def down
  	remove_column :bounties, :reward
  	add_column :bounties, :price, :integer
  end
end
