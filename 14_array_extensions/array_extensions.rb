class Array
	def initialize(array)
		@array = array
	end
	def sum
		self.inject(0) { |sum, x| sum + x}	
	end

	def square
		self.map { |n| n ** 2}
	end

	def square!
		self.map! { |n| n ** 2}
	end


end

