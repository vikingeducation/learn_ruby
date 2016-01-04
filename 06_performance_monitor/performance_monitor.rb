

def measure ( reps = 1)
    time_begin = Time.now
    reps.times { yield }
    time_end = Time.now
    ( time_end - time_begin ) / reps 
end
