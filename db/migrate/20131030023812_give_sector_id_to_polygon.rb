class GiveSectorIdToPolygon < ActiveRecord::Migration
  def up
  	add_column :polygons, :sector_id, :integer
  end

  def down
  	remove_column :polygons, :sector_id
  end
end
