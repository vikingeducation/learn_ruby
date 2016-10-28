class RPNCalculator
	attr_accessor :calculator
	#sets array for operands awaiting operations
	def initialize
		@operands = []
	end
	#adds operands to array
	def push(n)
		@operands.push n
	end
	#returns total of operations
	def value
		@operands[-1]
	end
	#adds operands when possible, otherwise raises error
	def plus
		if @operands.size>= 2
			@operands.push (@operands.pop + @operands.pop)
		else
			raise "calculator is empty"
		end
	end
	#subtracts operands when possible, otherwise raises error
	def minus
		if @operands.size>= 2
			new_n = (@operands[-2] - @operands[-1])
			@operands.pop(2)
			@operands.push new_n
		else
			raise "calculator is empty"
		end
	end
	#divides operands when possible, otherwise raises error
	def divide
		if @operands.size>= 2
			new_n = (@operands[-2].to_f / @operands[-1].to_f)
			@operands.pop(2)
			@operands.push new_n
		else
			raise "calculator is empty"
		end
	end
	#multiplies operands when possible, otherwise raises error
	def times
		if @operands.size>= 2
			new_n = (@operands[-2] * @operands[-1])
			@operands.pop(2)
			@operands.push new_n
		else
			raise "calculator is empty"
		end
	end
	#evaluates a string and turns components into operators or operands
	def tokens(string)
		operators = ["+", "-", "*", "/"]
		inputs = string.split ' '
		tokenized = inputs.collect do |input|
			if operators.include? input
				input.to_sym
			else
				input.to_i
			end
		end
		tokenized
	end
	#evaluats tokenized string
	def evaluate(string)
		tokens(string).each do |input|
			if input == :+
				self.plus
			elsif input == :-
				self.minus
			elsif input == :/
				self.divide
			elsif input == :*
				self.times
			else
				self.push input
			end
		end
		self.value
	end

end




