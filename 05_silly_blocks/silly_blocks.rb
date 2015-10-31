def reverser
  word_array = yield.split(" ")
  word_array.each do |word| 
    word.reverse!
    word << " "
  end

  return word_array.join.strip
end

def adder(amount_to_add=1)
  new_number = yield + amount_to_add
  return new_number
end

def repeater

end