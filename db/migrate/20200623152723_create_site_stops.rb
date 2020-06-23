class CreateSiteStops < ActiveRecord::Migration[6.0]
  def change
    create_table :site_stops do |t|
      t.integer :outing_id
      t.integer :site_id

      t.timestamps
    end
  end
end
