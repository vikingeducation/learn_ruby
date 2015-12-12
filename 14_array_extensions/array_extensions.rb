class Array
	def sum
		!self.empty? ? self.inject { |result, element| result + element } : 0
	end

	def square
		!self.empty? ? self.map { |element| element ** 2 } : []
	end

	def square!
		!self.empty? ? self.map! { |element| element ** 2 } : []
	end

end		
