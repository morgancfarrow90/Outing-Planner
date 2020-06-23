class CreateOutings < ActiveRecord::Migration[6.0]
  def change
    create_table :outings do |t|
      t.integer :user_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
