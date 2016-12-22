def measure(n=1)
  t1 = Time.now
  n.times { yield }
  t2 = Time.now
  elasped_time = (t2 - t1)/n
end