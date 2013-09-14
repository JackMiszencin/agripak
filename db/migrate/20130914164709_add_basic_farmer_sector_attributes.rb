class AddBasicFarmerSectorAttributes < ActiveRecord::Migration
  def change
  	add_column :farmers, :name, :string
  	add_column :farmers, :phone_number, :string
  	add_column :farmers, :email, :string
  	add_column :farmers, :postal_code, :string
  	add_column :sectors, :postal_code, :string
  end
end
