class RPNCalculator
	attr_accessor :values

	def initialize(values=[])
		@values = values
	end

	def check_if_empty
		raise "calculator is empty" if @values.length < 2
	end

	def push(value)
		@values.push(value)
	end

	def plus
		check_if_empty
		@values.push(:+)
	end

	def minus
		check_if_empty
		@values.push(:-)
	end

	def times
		check_if_empty
		@values.push(:*)
	end

	def divide
		check_if_empty
		@values.push(:/)
	end

	def value(values = @values)
		stack = []
		values.each do |value|
			case value
			when :+
				operands = stack.shift(2)
				stack.unshift(operands.reduce(:+))
			when :-
				operands = stack.shift(2)
				stack.unshift(operands[1] - operands[0])
			when :*
				operands = stack.shift(2)
				stack.unshift(operands[0].to_f * operands[1].to_f)
			when :/
				operands = stack.shift(2)
				stack.unshift(operands[1].to_f / operands[0].to_f)				
			else
				stack.unshift(value)
			end	
		end
		stack[0]
	end

	def tokens(string)
		string.split(" ").map do |value|
			if ["+","-","*","/"].include?(value)
				value.to_sym
			else
				value.to_f
			end
		end
	end

	def evaluate(string)
		tokens = self.tokens(string)
		self.value(tokens)
	end
end