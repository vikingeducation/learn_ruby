def measure(num_loops = 1)
  start_time = Time.now
  num_loops.times do
    yield
  end
  end_time = Time.now
  (end_time - start_time) / num_loops
end