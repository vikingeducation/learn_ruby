def measure(n=1)
  start_time = Time.now
  n.times{ yield }
  elapsed_time = (Time.now - start_time)/n
end