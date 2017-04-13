def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, x=2)
  if x == 1
    string
  else
    "#{string} #{repeat(string, x-1)}"
  end
end

def start_of_word(word, x=1)
  if x == 1
    word[0]
  else
    "#{word[0]}#{start_of_word(word[1..-1], x-1)}"
  end
end

def first_word(string)
  string.split(" ")[0]
end

def titleize(string)
  little_words = ["the", "over", "in", "on", "for", "and"] # and so on...
  words = string.split(" ")
  words.each {|word| little_words.include?(word) ? word : word.capitalize!}
  words[0].capitalize! # ensure first word is capitalized
  words.reduce { |title, word| "#{title} #{word}"}
end
