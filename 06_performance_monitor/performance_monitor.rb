require "time"

def measure(number_of_times=1)
  start_time = Time.now
  number_of_times.times do
    yield
  end
  end_time = Time.now
  return ( end_time - start_time ) / number_of_times
end