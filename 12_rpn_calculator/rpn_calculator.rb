class RPNCalculator
	# Make sure value is readable
	attr_reader :value

	def initialize
		# Start w/ an empty stack and nil value
		@stack = []
		@value = nil
	end

	def push(element)
		@stack.push(element)
	end

	# have a method that fails if the stack is empty
	def check_stack
		if @stack.empty?
			raise "calculator is empty"
		end
	end

	def plus
		check_stack
		temp_plus = @stack.pop() + @stack.pop()
		@stack << temp_plus
		@value = temp_plus
	end

	def minus
		check_stack
		minus_second = @stack.pop()
		minus_first = @stack.pop()
		@stack << minus_first - minus_second
		@value = minus_first - minus_second
	end

	def divide
		check_stack
		divide_down = @stack.pop()
		divide_up = @stack.pop()
		@stack << divide_up.to_f / divide_down.to_f
		@value = divide_up.to_f / divide_down.to_f
	end

	def times
		check_stack
		temp_times = @stack.pop() * @stack.pop()
		@stack << temp_times
		@value = temp_times
	end

end