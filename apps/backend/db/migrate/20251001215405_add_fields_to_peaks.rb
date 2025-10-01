class AddFieldsToPeaks < ActiveRecord::Migration[7.0]
  def change
    add_column :peaks, :difficulty, :string
    add_column :peaks, :distance, :float
    add_column :peaks, :est_time, :string
    add_column :peaks, :rating, :float
    add_column :peaks, :rating_count, :integer
    add_column :peaks, :image_url, :string
  end
end
