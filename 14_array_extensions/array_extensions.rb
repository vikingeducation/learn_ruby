class Array

	def sum
		if self.empty?
			0
		else
			self.reduce(:+)
		end
	end

	def square
		if self.empty?
			self
		else
			self.map do |num|
				num ** 2
			end
		end
	end

	def square!
		new_array = []
		if self.empty?
			self
		else
			self.each_with_index do |num, index|
				self[index] = num**2
			end
			self
		end
	end




end