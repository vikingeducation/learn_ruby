def reverser
  result = []
  # binding.pry
  yield.split.each do |word|
    result << word.reverse
  end
  result.join(" ")
end

def adder n = nil
  if n.nil?
    yield + 1
  else
    yield + n
  end
end

def repeater n = 1
  n.times { yield }
end
