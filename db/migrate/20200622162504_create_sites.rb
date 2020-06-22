class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.text :details
      t.string :address
      t.integer :start_time
      t.integer :end_time
      t.integer :day_id
      t.integer :neighborhood_id
      t.integer :user_id

      t.timestamps
    end
  end
end
