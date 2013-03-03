class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_pic
      t.string :stripe_id
      t.string :stripe_tok
      t.string :city
      t.string :status

      t.timestamps
    end
  end
end
