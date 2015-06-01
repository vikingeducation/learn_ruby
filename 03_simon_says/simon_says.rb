def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, nrep=2)
  ("#{word} "*nrep).strip
end

def start_of_word(word, nchar)
  word[0..nchar-1]
end

def first_word(string)
  string.split(" ")[0]
end

def titleize(string)
  little = ["a", "the", "and", "but", "or", "over"]
  string.split(" ").each_with_index.map {|w, ind| \
    ([0, -1].include?(ind)||!little.include?(w)) ? w.capitalize : w}\
    .join(" ")
end