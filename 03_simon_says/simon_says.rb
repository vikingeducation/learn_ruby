def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
  str = str + " #{str}"*(num-1)
end

def start_of_word(str, num)
  str.byteslice(0, num)
end

def first_word(str)
  str.split(" ").first
end

def titleize(str)
  little_words = ["a", "the", "in", "on", "over", "to", "from", "and"]
  str.split.each_with_index.map{|word, index| little_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end