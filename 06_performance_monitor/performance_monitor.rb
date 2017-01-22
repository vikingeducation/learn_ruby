def measure(repetitions = 1)
  measurements = []
  repetitions.times do
    elapsed_time = run_and_time_block { yield }
    measurements.push(elapsed_time)
  end
  measurements.reduce(:+) / measurements.length
end

def run_and_time_block
  start = Time.now
  yield
  Time.now - start
end