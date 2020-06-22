class CreateSpecials < ActiveRecord::Migration[6.0]
  def change
    create_table :specials do |t|
      t.string :name
      t.text :details
      t.string :address
      t.integer :neighborhood_id
      t.boolean :monday, default: false
      t.boolean :tuesday, default: false
      t.boolean :wednesday, default: false
      t.boolean :thursday, default: false
      t.boolean :friday, default: false
      t.boolean :saturday, default: false
      t.boolean :sunday, default: false
      t.integer :start_time
      t.integer :end_time
      t.integer :user_id

      t.timestamps
    end
  end
end
