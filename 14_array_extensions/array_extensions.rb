class Array

	def sum
		sum = 0
		self.each { |num| sum+=num }
		sum
	end

	def square
		new_arr = []
		self.collect { |num| new_arr << num**2  }
		new_arr
	end

	def square!
		self.replace(self.collect { |num| num**2 })
	end

end