class Image < ActiveRecord::Base
	attr_accessible :kind, :histogram_array, :histogram_path, :sector_id
	belongs_to :sector

	def get_histogram(path)
		entries = []
		File.open(path).each_line do |line|
			val = line.strip.gsub(/\[[0-9]*\]/,'')
			entries << val
		end
		self.histogram_array = entries.join(",")
		self.save
		return entries
	end

end
