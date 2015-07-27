def measure(times = 1)
  start_time = Time.now
  times.times {  yield } if block_given?
  puts end_time.inspect
  (end_time - start_time)/times
end