class AddTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firebase_token, :string
  end
end
