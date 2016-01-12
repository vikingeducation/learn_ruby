def reverser()
  input_array = yield.split(" ")

  output_array = input_array.map { |n| n.reverse}
  return output_array.join(" ")
  
end

#this runs in IRB...not sure why they don't like it.

def adder(num)
  return num+1
end

def repeater (block_was_executed)
  return true
end