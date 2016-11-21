def measure(num = 1)
  start = Time.now
  num.times { yield }
  finish = Time.now
  (finish - start) / num
end
