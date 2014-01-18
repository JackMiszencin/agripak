class AddZoneIdToSector < ActiveRecord::Migration
  def change
  	add_column :sectors, :zone_id, :integer
  end
end
