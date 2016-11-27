class Array
	def sum
		total = 0
		self.each do |number|
			total += number
		end
		return total
	end

	def square
		return [] if self.empty?
		self.map {|num| num ** 2}
	end

	def square!
		self[0..self.length].each do |num| 
			self << num ** 2
			self.shift
		end
	end
end