class Province < ActiveRecord::Base
	attr_accessible :name
	has_many :zones
	has_many :sectors
end
