# rpn calculator.rb

require 'pry'



class RPNCalculator

	# read/write access
	attr_reader :calculator



	# initialize an empty array for calculator
	def initialize
		@calculator = []
	end




	# if the calculator has less than 2 numbers/ops, we can do anything with it
	def empty?

		if @calculator.count < 2

			# call raise (not return) to pass test for 'empty'
			raise "calculator is empty"

		end

	end



	# when plus called - the last 2 numbers in an array are added
	def plus

		# we have to make sure we have enough elements to perform the operation by calling empty
		empty?

		# pop the num1 and num2 in order to take them from the back of the array as needed
		num_1 = @calculator.pop
		num_2 = @calculator.pop

		# the result of adding the nums are pushed into the @calc array
		@calculator << num_2 + num_1
	end



	# when minus called - the last 2 numbers are subtracted
	def minus

		# we have to make sure we have enough elements to perform the operation by calling empty
		empty?

		# store num2 by pop to take from end of array
		num_1 = @calculator.pop
		num_2 = @calculator.pop

		# result of the subtraction is pushed into @calc
		@calculator << num_2 - num_1

	end



	# when divide called - last 2 numbers are divided
	def divide

		# make sure when can perform the operation
		empty?

		# pop the last 2 numbers and store but need to be converted to a float
		num_1 = @calculator.pop.to_f
		num_2 = @calculator.pop.to_f

		# division is performed and pushed to @calc
		@calculator << num_2 / num_1

	end



	# multiply the nums
	def times

		# check we can perform the operation
		empty?

		# pop the last 2 numbers and convert to a float
		num_1 = @calculator.pop.to_f
		num_2 = @calculator.pop.to_f

		# perform the operation push to @calc
		@calculator << num_2 * num_1

	end



	# whenever push called the calc array will be populated with the numbers to then be acted on with the operand calls
	def push(num)

		# pushes num to the @cal unless nil
		@calculator << num unless num == nil

	end


	# returns the last value in the array where an operand was called in in case there are more numbers still to be acted upon
	def value

		return @calculator.last

	end



	# tokenize the string
	def tokens(arr)

		# break up the string to evaluate each element
		arr.split(" ").map { |x|

			# use regex to see if 0-9 - then convert to int
			(/[0-9]/) === x ? x.to_i : x.to_sym

		}


	end


	def evaluate ( string )



	end


end
