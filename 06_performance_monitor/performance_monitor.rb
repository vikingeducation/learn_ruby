def measure(n=1)
  totaltime = 0
  n.times do
    start_time = Time.now
    yield
    end_time = Time.now
    totaltime += end_time - start_time		    
  end
  totaltime / n
end

result = measure(2) do
   faketime = 90
   5.times do
       faketime += 5
   end
end

puts result