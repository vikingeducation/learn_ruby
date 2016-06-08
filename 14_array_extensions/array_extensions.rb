class Array
	
	def sum
		return 0 if self.empty?
		self.reduce(:+)
	end

	def square
		return self if self.empty?
		self.map do |num|
			num**2
		end
	end

	def square!
		return self if self.empty?
		self.map! do |num|
			num**2
		end
	end

end