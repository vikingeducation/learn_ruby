def reverser
  word_array = yield.split(" ")
  word_array.each { |word| "#{word.reverse!}" }
  return word_array.join.strip
end

def adder

end

def repeater

end