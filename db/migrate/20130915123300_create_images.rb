class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string :type
    	t.string :histogram_array
    	t.string :histogram_path
      t.timestamps
    end
  end
end
