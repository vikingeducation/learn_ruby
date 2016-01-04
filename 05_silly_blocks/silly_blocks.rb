def reverser
  if block_given?
    phrase = yield
    words = phrase.split(" ")
    words.each { |word| word.reverse! }
    reverse_phrase = words.join(" ").strip
  end
  reverse_phrase
end

def adder(value=1)
  if block_given?
    number = yield
    number += value
  end
  number
end

def repeater(number=1)
  if block_given?
    number.times do 
      yield
    end
  end
end