class CreateSpecials < ActiveRecord::Migration[6.0]
  def change
    create_table :specials do |t|
      t.string :name
      t.text :details
      t.string :address
      t.integer :neighborhood_id
      t.integer :day_id
      t.integer :start_time
      t.integer :end_time
      t.integer :user_id

      t.timestamps
    end
  end
end
