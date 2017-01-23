def reverser
  if block_given?
    block = yield
    if block.split(" ").length > 1
      strings = block.split(" ")
      strings.map { |string| string.reverse! }
      return strings.join(" ")
    else
      return block.reverse
    end
  end
end

def adder(input=0)
  if block_given?
    block = yield
    
    if input == 0
      return block + 1
    else
      return input + 5
    end
  end
end

def repeater(num_times=1)
  if block_given?
    if num_times == 1
      yield
    else
      num_times.times { yield }
    end
  end
end