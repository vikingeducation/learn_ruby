class Array
	def sum
		return 0 if self.empty?
		self.reduce {|sum, i| sum += i}
	end

	def square
		self.map {|i| i**2}
	end

	def square!
		self.map! {|i| i**2}
	end
end