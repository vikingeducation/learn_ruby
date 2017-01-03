def measure(num = 1)
  beg_time = Time.now
  num.times { yield }
  finish_time = Time.now
  (finish_time - beg_time) / num
end