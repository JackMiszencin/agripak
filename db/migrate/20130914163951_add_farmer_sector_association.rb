class AddFarmerSectorAssociation < ActiveRecord::Migration
  def change
  	add_column :farmer_sectors, :sector_id, :integer
  	add_column :farmer_sectors, :farmer_id, :integer
  end
end
