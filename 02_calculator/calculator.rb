#calculator.rb


# add 2 parameters
def add( num1, num2 )

	num1 + num2

end


# subtract 2 parameters
def subtract( num1, num2 )
	num1 - num2
end


# add an array of numbers
def sum( arr )

	# if array is empty, return 0
	if arr == []

		0

	else

		# add all elements(e) together with reduce - set result(r) to zero for addition
		arr.reduce( 0 ) { |r, e| r + e }

	end

end


# multiply array items
def multiply( arr )

	# use reduce with r at 1 for multiplication
	arr.reduce(1) { |r, e| r * e }

end


# raise to power
def power( base, exponent )

	base ** exponent

end


# perform factorial (ie.(5)=>5*4*3*2*1)
def factorial( num )

	# create array to store the numbers
  array = []

  # return 0 if 0 given
  if num == 0

  	 return 0

  end

  # starting at num decrement by one to push each result in the array
  while num >= 1

    array << num
    num -= 1

  end

  # call the multiply function to calculate result
  multiply( array )

end