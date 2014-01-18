class Polygon < ActiveRecord::Base
  include Mongoid::Document
  include Mongoid::Timestamps
	belongs_to :farmer, :foreign_key => :farmer_id
	belongs_to :sector, :foreign_key => :sector_id
	field :area, :type => Float
end
