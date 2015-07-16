def reverser
    yield.split(" ").map{|word| word.reverse}.join(" ")
end

#word.size.downto(0).map{|i| word << "#{word[i]}"}

def adder(number=1)
  yield + number
end

def repeater(number=1)
  number.times do 
    yield ? block_was_executed = true : block_was_executed = false
  end
end