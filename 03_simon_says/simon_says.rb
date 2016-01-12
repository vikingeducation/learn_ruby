def echo (hello)
  return hello
end

def shout(hello)
  return hello.upcase
end

def repeat (hello, num=2)
  new_string = ("#{hello} " * num).strip
  return new_string
end

def start_of_word(hello, num=1)
  return hello[0..num-1]
end

def first_word(phrase)
  array_word = phrase.split(" ")
  return array_word[0]
end

def titleize(hello)
  hello.capitalize!

  little_words = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'nor', 'over']

  capital_array = hello.split(" ").map {|i| 
    if little_words.include? (i)
      i
    else 
      i.capitalize
    end
  }
  return capital_array.join(" ")
end



