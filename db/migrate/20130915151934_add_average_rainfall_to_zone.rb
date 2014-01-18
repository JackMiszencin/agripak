class AddAverageRainfallToZone < ActiveRecord::Migration
  def change
  	add_column :zones, :average_rainfall, :float
  end
end
