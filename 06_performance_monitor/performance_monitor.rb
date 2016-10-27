def measure(cycles = 1)
  counts = 0
  cycles.times do
    start_time = Time.now
    yield
    end_time = Time.now
    counts += (elapsed_time = end_time - start_time)
  end
  counts.to_f/cycles.to_f
end