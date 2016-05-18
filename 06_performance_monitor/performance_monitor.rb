def measure(times=1)
  start = Time.now

  times.times do 
    yield
  end 
  
  elapsed = Time.now - start
  elapsed/times.to_f
end