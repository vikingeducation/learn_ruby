class Array
	def sum
		sum = 0
		self.each do |num|
			sum += num
		end
		sum
	end

	def square
		self.map do |element|
			element**2
		end
	end

	def square!
		self.map! do |element|
			element**2
		end
	end
end
