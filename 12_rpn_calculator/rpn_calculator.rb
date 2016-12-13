class RPNCalculator
	@calculator
	@value
	@value1
	@value2
	def plus
		if @calculator.size > 1
			@value1 = @calculator.pop
			@value2 = @calculator.pop
			@value = @value2 + @value1
			@calculator << @value
		else
			begin
     			raise "calculator is empty"
 			end
		end
	end

	def minus
		if @calculator.size > 1
			@value1 = @calculator.pop
			@value2 = @calculator.pop
			@value = @value2 - @value1
			@calculator << @value
		else
			begin
     			raise "calculator is empty"
 			end
		end
	end

	def divide
		if @calculator.size > 1
			@value1 = @calculator.pop
			@value2 = @calculator.pop
			@value = @value2.to_f / @value1.to_f
			@calculator << @value
		else
			begin
     			raise "calculator is empty"
 			end
		end
	end

	def times
		if @calculator.size > 1
			@value1 = @calculator.pop
			@value2 = @calculator.pop
			@value = @value2.to_f * @value1.to_f
			@calculator << @value
		else
			begin
     			raise "calculator is empty"
 			end
		end
	end

	def initialize
		@calculator = []
	end

	def push(num)
		@calculator << num
	end

	def value
		@value
	end

	def tokens(string)
		tokens_string = string.split(" ")
		tokens_array = []
		tokens_string.each do |item|
			case item
			when "+" 
				tokens_array << item.to_sym
			when "-" 
				tokens_array << item.to_sym
			when "*" 
				tokens_array << item.to_sym
			when "/" 
				tokens_array << item.to_sym
			else 
				tokens_array << item.to_i
			end	
		end
		tokens_array
	end

	def evaluate(string)
		tokens_array = tokens(string)
		tokens_array.each do |item|
			if item.is_a? Integer
				push(item)
			elsif item.to_s == "+"
				plus
			elsif item.to_s == "-"
				minus
			elsif item.to_s == "*"
				times
			elsif item.to_s == "/"
				divide			
			end
		end
		@value
	end
end