class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
    	t.string :postal_code
      t.timestamps
    end
  end
end
