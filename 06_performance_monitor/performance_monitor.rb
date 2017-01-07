def measure(n=1)
  start = Time.now
  n.times {yield}
  return (Time.now-start)/n
end
