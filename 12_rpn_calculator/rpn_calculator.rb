class RPNCalculator

	attr_reader :calculator

	def initialize
		@calculator = []
	end


	def plus

		@calculator << "+"

	end


	def push(num)

		@calculator << num unless num == nil

	end



	def value

		length_of_calc = @calculator.count
		num_array = []
		op_array = []
		result_array = []
		# we determine what operands are in the array
		# we determine how many numbers we have to calculate
		# if there is only one operand, we check there are only 2 nums
		@calculator.each { |num|
			if num.is_a?(Fixnum)
				num_array << num
			else
				op_array << num
			end}

		if length_of_calc == 3
				result_array << num_array.shift
				result_array << op_array.pop
				result_array << num_array.shift
		end

		result_array.map { |x| }

	end


end