def measure(times=1,&prc)
  start_time=Time.now
  times.times do
    prc.call
  end
  (Time.now-start_time)/times
end