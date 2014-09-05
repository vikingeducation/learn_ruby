# 14. Array Extensions

class Array

	def sum
		return 0 if self.empty?
		self.inject {|memo, num| memo += num}
	end

	def square
		return [] if self.empty?
		self.map {|x| x * x} 
	end

	def square!
		return [] if self.empty?
		self.map! {|x| x * x}
	end

end