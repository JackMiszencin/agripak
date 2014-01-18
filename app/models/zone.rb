class Zone < ActiveRecord::Base
	attr_accessible :province_id, :postal_code, :city, :head_post_office, :average_rainfall
	belongs_to :province
	has_many :sectors

	def self.import_zones(path)
		File.open(path).each_line do |line|
			items = line.split(",")
			z = Zone.new
			z.city = items[0]
			z.postal_code = items[1]
			p = Province.where(:name => items[3]).first
			unless p
			 	p = Province.new(:name => items[3])
				p.save
			end
			z.province_id = p.id.to_s
			z.head_post_office = items[2]
			z.save
		end
	end
end
