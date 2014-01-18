class CreatePolygons < ActiveRecord::Migration
  def change
    create_table :polygons do |t|
    	t.integer :farmer_id
      t.timestamps
    end
  end
end
