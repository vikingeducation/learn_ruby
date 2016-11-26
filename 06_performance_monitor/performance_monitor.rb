def measure(n=1)
  start_time = Time.now
  n.times {|n| yield }
  (Time.now - start_time) / n
end