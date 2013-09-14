class Farmer < ActiveRecord::Base
	has_many :farmer_sectors
	has_many :sectors, :through => :farmer_sectors

	attr_accessible :name, :postal_code, :email, :phone_number

	def load_sector(s)
		f = self.farmer_sectors.create
		f.sector = s
		f.save
	end

	def send_pest_warning(count)
		PestMailer.warn(self, count).deliver
	end

	def post_info
		puts self.name
		puts self.postal_code
		self.sectors.each do |s|
			puts s.postal_code
			puts s.id.to_s
		end
	end

	def check_pests
		plot_count = 0
		self.sectors.each do |s|
			puts s.has_pests?
			plot_count += 1 if s.has_pests?
		end
		puts plot_count
		self.send_pest_warning(plot_count) if plot_count > 0
	end
end
