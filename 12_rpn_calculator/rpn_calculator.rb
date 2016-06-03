class RPNCalculator
	
	def initialize
		@calculator = []
	end

	def push(num)
		@calculator << num
	end

	def plus
		raise "calculator is empty" if @calculator.empty?
		to_add = @calculator.pop(2).reduce(:+)
		@calculator.push(to_add)
	end

	def minus
		raise "calculator is empty" if @calculator.empty?
		to_minus = @calculator.pop(2).reduce(:-)
		@calculator.push(to_minus)
	end

	def divide
		raise "calculator is empty" if @calculator.empty?
		@calculator = @calculator.map { |num| num.to_f  }
		to_divide = @calculator.pop(2).reduce(:/)
		@calculator.push(to_divide)
	end

	def times
		raise "calculator is empty" if @calculator.empty?
		to_multiply = @calculator.pop(2).reduce(:*)
		@calculator.push(to_multiply)
	end

	def value
		@calculator[-1]
	end

end