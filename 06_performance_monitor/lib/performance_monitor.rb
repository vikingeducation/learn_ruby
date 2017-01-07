require "time"

def measure(n=1, &prc)
  start = Time.now
  
  n.times do  
    value = prc.call
  end

  finish = Time.now

  (finish - start) / n  
end