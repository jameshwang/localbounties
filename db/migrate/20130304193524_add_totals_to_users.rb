class AddTotalsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :total_earned, :integer
    add_column :users, :total_owed, :integer
  end
end
