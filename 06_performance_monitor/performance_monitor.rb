require "time"

def measure(num = 1)
  time_start = Time.now
  num.times{yield}
  time_end = Time.now
  (time_end-time_start)/num
end