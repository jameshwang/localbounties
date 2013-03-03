class CreateBounties < ActiveRecord::Migration
  def change
    create_table :bounties do |t|
      t.integer :owner_id
      t.integer :hunter_id
      t.string :title
      t.text :description
      t.datetime :due_date
      t.string :duration
      t.integer :price
      t.float :latitude
      t.float :longitude
      t.text :verification
      t.string :verification_type
      t.string :status

      t.timestamps
    end
  end
end
