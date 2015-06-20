def echo(val)
  val
end

def shout(val)
  val.upcase
end

def repeat(val, reps=2)
  arr = []
  reps.times do
    arr << val
  end

  arr.join(" ")
end

def start_of_word(word, letters)
  word[0, letters]
end

def first_word(words)
  words.split(" ")[0]
end

def titleize(title)

  # Split the title into the individual words, capitalize all major words.
  words = title.split.map{|word| (["and", "or", "but", "the", "over"].include? word)? word : word.capitalize}

  # Capitalize the first word in the title.
  words[0] = words[0].capitalize

  # Re-join the title.
  words.join(" ")
end