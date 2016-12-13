class Array
	def sum
		if self.size < 1
			0
		else
			self.inject(0) {|sum, item| sum += item}
		end
	end
	def square
		if self.size < 1
			[]
		else
			self.map {|item| item ** 2}
		end
	end
	def square!
		if self.size < 1
			[]
		else
			self.map! {|item| item ** 2}
		end
	end
end