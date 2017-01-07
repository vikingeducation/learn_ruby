require "time"

def measure(iter=1)
  stime = Time.now
  iter.times { yield }
  (Time.now - stime )/ (iter == 0 ? 1: iter)
end