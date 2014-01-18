class AddSectorIdToImage < ActiveRecord::Migration
  def change
  	add_column :images, :sector_id, :integer
  end
end
