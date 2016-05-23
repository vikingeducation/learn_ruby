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

		num_array = []
		op_array = []
		# we determine what operands are in the array
		# we determine how many numbers we have to calculate
		# if there is only one operand, we check there are only 2 nums
		@calculator.each { |num|
			if num.is_a?(Fixnum)
				num_array << num
			else
				op_array << num
			end}

	end


end