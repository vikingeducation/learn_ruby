def measure(number_of_times = 1)
  start = Time.now
  number_of_times.times { yield }
  finish = Time.now
  duration = finish - start
  average_duration = duration / number_of_times
end