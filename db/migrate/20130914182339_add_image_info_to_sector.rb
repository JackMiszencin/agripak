class AddImageInfoToSector < ActiveRecord::Migration
  def change
  	add_column :sectors, :thermal_path, :string
  	add_column :sectors, :thermal_text_path, :string
  	add_column :sectors, :thermal_array, :string
  	add_column :sectors, :normal_path, :string
  	add_column :sectors, :normal_text_path, :string
  	add_column :sectors, :normal_array, :string
  end
end
