def measure(repeats = 1)
  starting_time = Time.now
  repeats.times {
    yield
  }
  (Time.now - starting_time) / repeats
end