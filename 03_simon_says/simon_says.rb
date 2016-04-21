def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, number=2)
  array = Array.new(number, string)
  array.join(" ")
end

def start_of_word(string, number)
  if number == 1
    string[0]
  else
    string[0..(number-1)]
  end
end

def first_word(string)
  words = string.split(" ")
  words[0]
end

def titleize(string)
  array = string.split(" ").each_with_index do |word, index|
    if ["and", "the", "of", "in", "at", "on", "over"].include?(word) && index == 0
      word.capitalize!
    elsif !["and", "the", "of", "in", "at", "on", "over"].include?(word)
      word.capitalize!
    end
  end
  array.join(" ")
end
