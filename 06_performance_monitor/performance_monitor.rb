require 'time'


# method takes in parameter which will be used to run a block n times
def measure( num = 0 )

	# create time variable for current time
	time = Time.now

	# yields to block if parameter is 0
	if num == 0

		# call the block
    yield

  else

  	# yield to block n times sending current time
    num.times { | time_now | yield( time_now ) }

  end

  # calculate the elapsed time and/or average the result n times if n != 0
	( Time.now - time ) / ( num == 0 ? 1 : num )

end



