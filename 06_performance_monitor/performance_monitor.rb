#performance monitor

def measure(n=1)
    if block_given?
        delta = 0
       
        n.times do
            t1 = Time.now
                yield
            t2 = Time.now
            
            delta += t2-t1
        end
        delta /= n
    end
end