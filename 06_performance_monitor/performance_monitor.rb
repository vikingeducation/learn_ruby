def measure(number_of_runs=1)
  start = Time.now
  number_of_runs.times { yield }
  running_time = Time.now - start
  running_time / number_of_runs
end