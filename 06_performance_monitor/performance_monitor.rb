def measure(num_times = 1)
  avg_time = []
  num_times.times do
    beginning_time = Time.now
    yield
    avg_time << (Time.now - beginning_time)
  end

  return avg_time.inject{ |total_time, bench_time| total_time + bench_time }.to_f / avg_time.size
end
