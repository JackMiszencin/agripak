class FarmerSector < ActiveRecord::Base
	belongs_to :farmer
	belongs_to :sector
end
