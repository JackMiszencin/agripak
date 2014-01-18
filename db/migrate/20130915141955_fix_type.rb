class FixType < ActiveRecord::Migration
  def up
  	remove_column :images, :type
  	add_column :images, :kind, :string
  end

  def down
  end
end
