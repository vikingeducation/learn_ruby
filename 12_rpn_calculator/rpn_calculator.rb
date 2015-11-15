class RPNCalculator
	def initialize
		@line = []
		@sum = 0
	end

	def push num
		@line << num
	end

	def plus
		raise_error
		@sum = @line.pop + @line.pop
		@line << @sum
	end

	def minus
		raise_error
		second = @line.pop
		first = @line.pop
		@sum = first - second
		@line << @sum
	end

	def value
		@sum
	end

	def divide
		raise_error
		second = @line.pop
		first = @line.pop
		@sum = first.to_f / second
		@line << @sum
	end

	def times
		raise_error
		@sum = @line.pop * @line.pop
		@line << @sum
	end

	def raise_error
		raise "calculator is empty" if @line.size < 2
	end

	def tokens string
		@tokens = ['*', '/', '+', '-']
		tokenized = []
		string.split(' ').each do |chr|
			@tokens.include?(chr) ? tokenized << chr.to_sym : tokenized << chr.to_i
		end
		tokenized
	end

	def evaluate str
		calc = RPNCalculator.new
		str.split.each do |chr|
			if chr == '*'
				calc.times
			elsif chr == '/'
				calc.divide
			elsif chr == '+'
				calc.plus
			elsif chr == '-'
				calc.minus
			else
				calc.push(chr.to_i)
			end
		end
        calc.value
	end
end