def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
   [str] * num * ' '
end

def start_of_word(str,n)
    str[0...n]
end

def first_word(str)
    str.split.first
end

def titleize(str)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  str = str.capitalize
  cap_word = str.split(" ").map{|word| 
    if words_no_cap.include?(word) 
        word
    else
        word.capitalize
    end    
  }.join(" ")
    
  cap_word
end

puts titleize("the bridge over the river kwai")
