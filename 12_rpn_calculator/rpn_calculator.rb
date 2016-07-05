class RPNCalculator 
	attr_accessor :calculator

	def initialize
		@calculator = []
	end

	def push(n)
		@calculator.push(n)
	end

	def plus
		if @calculator.length >= 2
			sum = @calculator.pop + @calculator.pop
			@calculator << sum
		else
			raise "calculator is empty"
		end
	end

	def minus
		if @calculator.length >= 2
			first = @calculator.pop
			second = @calculator.pop
			difference = second - first
			@calculator << difference
		else
			raise "calculator is empty"
		end
	end

	def value
		@calculator[-1]
	end

	def divide
		if @calculator.length >= 2
			first = @calculator.pop.to_f
			second = @calculator.pop.to_f
			difference = second / first
			@calculator << difference
		else
			raise "calculator is empty"
		end
	end

		def times
		if @calculator.length >= 2
			first = @calculator.pop.to_f
			second = @calculator.pop.to_f
			difference = (second * first).to_f
			@calculator << difference
		else
			raise "calculator is empty"
		end
	end

	def tokens(input)
		total = []
		operators = ["*", "/", "+", "-"]
		new_input = input.split("")
		new_input.each do |ele|
			if operators.include?(ele)
				total << ele.to_sym
			else
				total << ele.to_i unless ele.to_i == 0
			end
		end
		p total
	end
	
 def evaluate s
    tokens(s).each do |t|
        case t
      	when :+
        	plus
      	when :-
        	minus
      	when :*
        	times
      	when :/
        	divide
      	else
        	push t
   		end
    end
    value
  end

end