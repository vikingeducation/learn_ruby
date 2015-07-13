def echo (prompt)
  prompt
end

def shout (prompt)
  prompt.upcase
end

def repeat (prompt, rep=2)
  string = prompt
  (rep-1).times do
   string += " " + prompt
  end
  string
end

def start_of_word (word, num_letters)
  word[0..num_letters-1]
end

def first_word (string)
  word = string.split(" ")[0]
end

def titleize (title)
  title.downcase
  little_words = ["the", "in", "a", "or", "and", "of", "nor", "over", "under"]
  words = title.split(" ")
  change=[]
  words.each do |word|
    unless little_words.include? (word)
      word = word.capitalize
      change << word
    else
      change << word
    end
  end
  change[0].capitalize!
  title = change.join(' ')
end
