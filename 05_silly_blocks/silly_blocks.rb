def reverser
  string = yield
  out_string = ""
  if string.include?(" ")
    words = string.split(" ")
    words.each {|word| out_string += "#{word.reverse} "}
    out_string[0..-2]
  else
    string.reverse
  end

end

def adder(increment=1)
  number = yield
  number += increment
end

def repeater(ntimes=1)
  ntimes.times {yield}
end
