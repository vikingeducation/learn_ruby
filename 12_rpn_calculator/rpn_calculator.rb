class RPNCalculator
	def initialize
		@stack = []
	end 

	def push(n)
		@stack << n
	end

	def plus
		@stack.push(evaluate + evaluate)
	end

	def minus
		@stack.push(-evaluate + evaluate)
	end

	def divide
		@stack.push(1.0/evaluate * evaluate)
	end

	def times
		@stack.push(evaluate * evaluate)
	end

	def value
		@stack[-1]
	end

	def pop
		raise "calculator is empty" if @stack.empty?
		@stack.pop
	end

	def tokens(string)
		string.split(" ").map do |x| 
			if x.match(/[0-9]+/)
				x.to_i 
			elsif x.match(/[*+-\/]/)
				x.to_sym 
			end
		end
	end

	def evaluate(stack = nil)
		@stack = tokens(stack) unless stack.nil?

		elem = pop
		if elem.is_a? Symbol 
			case elem
			when :+ then plus
			when :- then minus
			when :/ then divide
			when :* then times
			else 0
			end
			return pop
		else
			return elem
		end
	end
end
