class CreateFarmerSectors < ActiveRecord::Migration
  def change
    create_table :farmer_sectors do |t|

      t.timestamps
    end
  end
end
