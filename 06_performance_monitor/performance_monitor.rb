def measure(n=1)
  start = Time.now
  n.times { yield }
  out = ( Time.now - start ) / n
end