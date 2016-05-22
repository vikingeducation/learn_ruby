require 'time'



def measure(num = 0)

	time = Time.now

	if num == 0
    yield
  else
    num.times { | time_now | elapsed_time = yield( time_now ) }
  end

	( Time.now - time ) / ( num == 0 ? 1 : num )

end



