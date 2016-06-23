def measure(n=1) 

  
  
  t = Time.now
  n.times {|n| yield }
  time_taken = Time.now - t
  average = time_taken/n



end