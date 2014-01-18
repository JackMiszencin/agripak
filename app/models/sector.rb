class Sector < ActiveRecord::Base
	has_many :farmer_sectors
	has_many :farmers, :through => :farmer_sectors
	has_many :images
	belongs_to :zone
	attr_accessible :postal_code, :thermal_path, :thermal_text_path, :thermal_array, :normal_path, :normal_text_path, :normal_array, :province_id, :zone_id

	after_save :check_farmers

	def get_histogram(type, path)
		entries = []
		File.open(path).each_line do |line|
			val = line.strip.gsub(/\[[0-9]*\]/,'')
			entries << val
		end
		self.send("#{type}_array=", entries.join(","))
		self.save
		return entries
	end

	def last_thermal
		self.images.where(:kind => "thermal").last
	end

	def last_normal
		self.images.where(:kind => "normal").last
	end	

	def get_array(type)
		self.send("last_#{type}") ? self.send("last_#{type}").histogram_array.split(",").map{|x| x.to_i} : []
	end

	def has_pests?
		color = 0.0
		self.get_array("thermal").each_with_index do |x, idx|
			idx = idx.to_f - 127.0
			color += ((idx > 0 ? 1.0 : (-1.0)) * x.to_f)
		end
		puts color
		case self.zone.average_rainfall.to_f
		when (0.0)..(700.0)
			return color > 17000.0
		when (700.0)..(1.0/0.0)
			return color > 0
		else
			return color > 0
		end
	end

	def check_farmers
		if self.has_pests?
			self.farmers.each do |f|
				f.check_pests
			end
		end
	end

	def load_image(path, kind)
		i = Image.new(:histogram_path => path)
		i.get_histogram(path)
		i.kind = kind
		i.sector_id = self.id.to_s
		i.save
		self.check_farmers
	end



end
