def measure(num=1)
  start = Time.now
  (1..num).each {yield}
  stop = Time.now
  return (stop - start) / num
end