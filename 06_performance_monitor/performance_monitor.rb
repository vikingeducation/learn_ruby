def measure(reps = 1)
  elapsed = 0
  reps.times do
    start = Time.now
    yield
    finish = Time.now
    elapsed += (finish - start)
  end
  return elapsed / reps
end