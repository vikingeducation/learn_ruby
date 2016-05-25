class RPNCalculator

	attr_reader :calculator




	def initialize
		@calculator = []
	end





	def empty?

		if @calculator.count < 2
			raise "calculator is empty"
		end

	end




	def plus

		empty?

		num_1 = @calculator.pop
		num_2 = @calculator.pop

		@calculator << num_2 + num_1

	end


	def minus

		empty?

		num_1 = @calculator.pop
		num_2 = @calculator.pop

		@calculator << num_2 - num_1

	end


	def divide

		empty?

		num_1 = @calculator.pop.to_f
		num_2 = @calculator.pop.to_f

		@calculator << num_2 / num_1

	end




	def times

		empty?

		num_1 = @calculator.pop.to_f
		num_2 = @calculator.pop.to_f

		@calculator << num_2 * num_1

	end




	def push(num)

		@calculator << num unless num == nil

	end



	def value

		return @calculator.last

	end

	def tokens(arr)

		new_arr = []

		new_arr = arr.split(" ").each { |x|
			if x == "+"
				x.to_sym
			elsif x == /[\s]/
				next
			else
				x.to_i
			end
		}.join(",")


	end



end
