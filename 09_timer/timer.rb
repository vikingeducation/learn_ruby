class Timer

attr_accessor :seconds

def initialize
  @seconds = 0
end

def padded(digit)
  number = digit.to_s
  if number.length == 1
    number = "0"+ number
  else
    number
  end
  number
end

def time_string
  hr = @seconds/3600
  hr == 0 ? remaining = @seconds : remaining = @seconds % (hr * 3600)
  min = remaining / 60
  min == 0 ? sec = remaining : sec = remaining % (min * 60)
  string = "#{padded(hr)}:#{padded(min)}:#{padded(sec)}"
end



end