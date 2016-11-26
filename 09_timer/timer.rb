class Timer

attr_accessor :seconds

def seconds
  0
end

def time_string
  default = Time.at(0)+18000
  @seconds
  (default + @seconds).strftime("%H:%M:%S")
end

end