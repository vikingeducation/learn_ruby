def measure(repetitions = 1)
  start = Time.now
  repetitions.times {yield}
  length = (Time.now - start).to_f
  length / repetitions
end
