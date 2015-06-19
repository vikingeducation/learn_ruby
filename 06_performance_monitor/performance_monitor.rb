def measure(repeat = 1)
  time_to_run = []
  repeat.times do
    t0 = Time.now
    yield
    t1 = Time.now
    time_to_run << (t1 - t0)
  end
  total_time = time_to_run.reduce { |memo, number| memo + number}
  return total_time / repeat
end