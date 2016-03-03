class RPNCalculator
	def initialize
		@arr = []
		@result = 0
	end

	def push num
		@arr.push num
	end

	def plus
		@result+= @arr.pop
	end

	def value
		plus
		@arr.length.times do
			plus
			@result
		end
	end
end