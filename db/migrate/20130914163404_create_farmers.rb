class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|

      t.timestamps
    end
  end
end
