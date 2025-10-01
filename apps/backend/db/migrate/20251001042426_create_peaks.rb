class CreatePeaks < ActiveRecord::Migration[7.0]
  def change
    create_table :peaks do |t|
      t.string :name
      t.integer :elevation
      t.float :lat
      t.float :lng
      t.string :gpx_path
      t.text :description

      t.timestamps
    end
  end
end
