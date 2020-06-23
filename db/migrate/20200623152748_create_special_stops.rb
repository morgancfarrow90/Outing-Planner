class CreateSpecialStops < ActiveRecord::Migration[6.0]
  def change
    create_table :special_stops do |t|
      t.integer :outing_id
      t.integer :special_id

      t.timestamps
    end
  end
end
