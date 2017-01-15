require "time"

def measure(num_times=1)

    start_time = Time.now
    num_times.times {yield}
    (Time.now-start_time)/num_times #average time

end

puts Time.now()
