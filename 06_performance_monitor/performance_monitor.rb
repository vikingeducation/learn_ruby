def measure(n=1)
  time_elapsed = 0
  n.times do
      time = Time.now
      yield
      time_elapsed += (Time.now - time)
  end
  time_elapsed / n
end