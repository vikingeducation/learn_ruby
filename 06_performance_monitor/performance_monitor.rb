def measure iterations = 1
  total = 0
  
  if iterations.class == Array
    iterations = iterations.length
  end
  
  iterations.times do
    if block_given? 
      start_time = Time.now
      yield
      total += Time.now - start_time	
    else
      start_time = Time.now
      total += Time.now - start_time
    end
  end
  total / iterations
end