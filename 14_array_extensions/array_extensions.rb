class Array
	def sum 
		self.inject(0) {|s, x| s + x}
	end

	def square
		self.map {|x| x ** 2}
	end

	def square!
		self.map! {|x| x ** 2}
	end
end
