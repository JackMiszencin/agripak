class AddProvinceIndexes < ActiveRecord::Migration
  def change
  	add_column :zones, :province_id, :integer
  	add_column :sectors, :province_id, :integer
  	add_column :farmers, :zone_id, :integer
  end
end
