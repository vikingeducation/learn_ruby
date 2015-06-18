def echo(msg)
  msg
end

def shout(message)
  message.upcase
end

def repeat(msg, number_of_times = 2)
  ([msg] * number_of_times).join(" ")
  #Apparently this also works:
  #[msg] * number_of_times * " "
end

def start_of_word(string, first_n_letters = 1)
  result = ""
  for pos in (0...first_n_letters)
    result << string[pos]
  end
  return result
end

def first_word(text)
  text.split(" ").first
end

def titleize(words)
  words.capitalize!  # capitalize the first word in case it is part of the no words array
    exceptions = ["and", "or", "the", "over", "to", "the", "a", "but"]
    words.split(" ").map {|word| 
      if exceptions.include?(word) 
        word
      else
        word.capitalize
      end
    }.join(" ")
end