require 'time'

def measure(count = 1, block={})
  start_time = Time.now
  count.times {yield}
  stop_time = Time.now
  elapsed_time = stop_time - start_time
  elapsed_time / count
end
