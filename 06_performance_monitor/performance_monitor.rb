def measure (number_of_times = 1)
  elapsed_time = 0
  number_of_times.times do
    start = Time.now
    yield
    end_time = Time.now
    elapsed_time += end_time - start
  end

  return elapsed_time/number_of_times

end