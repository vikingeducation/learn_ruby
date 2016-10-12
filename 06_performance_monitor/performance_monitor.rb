def measure(i=1)
  i = i.size if i.is_a?(Array)
  
  total = 0
  
  i.times do 
    if block_given?
      start_time = Time.now
      yield
      total += Time.now - start_time
    else
      start_time = Time.now
      total += Time.now - start_time
    end
  end
    
  return total / i
  
end

