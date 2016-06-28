#require 'time'

def measure(n = 1) 
	y = Time.now
    n.times do 
    	yield
    end
    elapsed_time = Time.now-y
    elapsed_time / n
end