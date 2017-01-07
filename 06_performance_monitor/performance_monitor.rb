require 'time'

def measure(cycles=1)
  elapsed_time = 0
  cycles.times do
    start_time = Time.now
    yield
    end_time = Time.now
    elapsed_time += end_time - start_time
  end
  return elapsed_time/cycles
  
end