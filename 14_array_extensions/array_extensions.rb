class Array	
	def sum
		self.inject(0) {|sum, ele| sum + ele}
	end

	def square
		self.map {|ele| ele**2}
	end

	def square!
		self.map! {|ele| ele**2}
	end
end