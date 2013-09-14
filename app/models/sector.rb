class Sector < ActiveRecord::Base
	has_many :farmer_sectors
	has_many :farmers, :through => :farmer_sectors
	attr_accessible :postal_code, :thermal_path, :thermal_text_path, :thermal_array, :normal_path, :normal_text_path, :normal_array

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

	def get_array(type)
		self.send("#{type}_array").split(",").map{|x| x.to_i}
	end

	def has_pests?
		color = 0.0
		self.get_array("thermal").each_with_index do |x, idx|
			idx = idx.to_f - (255.0/2.0)
			color += (idx * x.to_f)
		end
		return color > 0
	end

end
