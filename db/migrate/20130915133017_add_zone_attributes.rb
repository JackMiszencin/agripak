class AddZoneAttributes < ActiveRecord::Migration
  def change
  	add_column :zones, :city, :string
  	add_column :zones, :head_post_office, :string
  end
end
