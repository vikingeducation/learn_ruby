class Array

	# Add all elements
	def sum
		return 0 if self.length == 0
		self.inject { |prev,curr| prev + curr }
	end

	# Squares each element & rreturns copy
	def square
		return self if self.length  == 0
		self.map { |val| val**2 }
	end

	# Squares each element of original array
	def square!
		return self if self.length  == 0
		self.map! { |val| val**2 }
	end

end