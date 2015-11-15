class Array

	def sum
		result = 0
		self.each {|num| result += num}
		result
	end

	def square
		result = []
		self.each {|num| result << num**2}
		result
	end

	def square!
		self.map! {|num| num**2}
	end
end