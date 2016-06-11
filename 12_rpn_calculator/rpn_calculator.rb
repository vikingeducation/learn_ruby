class RPNCalculator

	def initialize
		@num_register = []
		@value = 0
	end

	def push(num)
		@num_register << num
	end

	def plus
		raise "calculator is empty" if @num_register.empty?
		if @num_register.length > 1
			@value += @num_register[-1] + @num_register[-2]
			2.times {|i| @num_register.pop}
		else
			@value += @num_register[-1]
			@num_register.pop
		end
	end

	def minus
		raise "calculator is empty" if @num_register.empty?
		if @num_register.length > 1
			@value += @num_register[-2] - @num_register[-1]
			2.times {|i| @num_register.pop}
		else
			@value -= @num_register[-1]
			@num_register.pop
		end
	end

	def divide
		raise "calculator is empty" if @num_register.empty?
		if @num_register.length > 1
			@value += @num_register[-2].to_f / @num_register[-1]
			2.times {|i| @num_register.pop}
		else
			@value /= @num_register[-1].to_f
			@num_register.pop
		end
	end

	def times
		raise "calculator is empty" if @num_register.empty?
		if @num_register.length > 1
			@value += @num_register[-2] * @num_register[-1]
			2.times {|i| @num_register.pop}
		else
			@value *= @num_register[-1]
			@num_register.pop
		end
	end

	def tokens(str)
		input = str.split(" ")
		calc_input = input.map do |item|
						case item
						when "*"
							  item = :*
						when "/"
							  item = :/
						when "+"
							  item = :+
						when "-"
							  item = :-
						else
							  item = item.to_i
						end
					end
	end

	def evaluate(str)
		calc_input = tokens(str)
		for ii in 0..calc_input.length
			case calc_input[ii]
			when :*
				  times
			when :/
				  divide
			when :+
				  plus
			when :-
				  minus
			else
				  push(calc_input[ii])
			end
		end
		output_print = @value
		@value = 0
		return output_print
	end

	def value
		if @num_register.empty?
			output_print = @value
			@value = 0
			return output_print
		end
		@value
	end
end