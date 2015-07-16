def measure(number=1)
  
  total=0
  number.times do
    t1=Time.now
    yield
    t2=Time.now
    total+=t2-t1
  end
  total/number
  #(a_time.inject{ |sum, el| sum + el })/a_time.size
  
  
end