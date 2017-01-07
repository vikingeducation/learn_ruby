def measure(number=1)
  start_time = Time.now

  number.times do
    yield
  end

  end_time = Time.now

  # Returning average
  (end_time - start_time) / number
end