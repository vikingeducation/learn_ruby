require "time"

def measure(nrep=1)
  start=Time.now
  nrep.times {yield}
  (Time.now - start)/nrep
end