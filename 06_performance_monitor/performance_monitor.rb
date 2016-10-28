def measure(num = 1)
  start_time = Time.now
  num.times do
    yield
  end
  total_time = elapsed_time(start_time)
  average_time(total_time, num)
end

def elapsed_time(start_time)
  Time.now - start_time
end

def average_time(total_time, num)
  total_time / num
end