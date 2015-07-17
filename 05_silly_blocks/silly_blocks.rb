def reverser
  word_array = yield.split(" ")
  reversed_word = []
  word_array.each do |word|
    reversed_word.push(word.reverse)
  end
  string = reversed_word.join(" ")
  string
end

def adder(value = 1)
  yield + value
end
  
def repeater(times=1)
  i = 0
  while i<times
    yield
    i+=1
  end
end
    
