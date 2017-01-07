def measure(n=1)
   tot_runs = 0
   tot_time = 0
   n.times do
   	 init_time=Time.now
   	 yield
   	 end_time=Time.now
   	 tot_time += (end_time - init_time)
   	 tot_runs += 1
   end
   tot_time / tot_runs
end	