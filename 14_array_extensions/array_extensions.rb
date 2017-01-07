class Array
	def sum
		if self.empty? 
			0 
		else
			self.reduce {|total, current| total + current}
		end
	end

	def square
		if self.empty? 
			self
		else
			self.collect {|value| value ** 2}
		end
	end

	def square!
		self.collect! {|value| value ** 2}
	end
end