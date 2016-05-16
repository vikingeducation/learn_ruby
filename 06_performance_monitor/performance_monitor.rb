def measure(repeat=1)
  total_time = 0
  repeat.times do
    start_time = Time.now
    yield
    total_time += Time.now - start_time
  end

  return total_time / repeat
end