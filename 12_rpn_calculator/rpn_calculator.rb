class RPNCalculator
	def initialize
		@stack = []
		
	end
	def push(num)
		@stack.push(num)
		
	end
	def plus
		@stack[-2] = @stack[-2] + @stack[-1]
		@stack.pop
	end

	def minus
		@stack[-2] = @stack[-2] - @stack[-1]
		@stack.pop
	end

	def times
		@stack[-2] = @stack[-2] * @stack[-1]
		@stack.pop
	end

	def divide
		@stack[-2] = @stack[-2].to_f / @stack[-1].to_f
		@stack.pop
	end
	def value
		@stack[-1]
	end


end
