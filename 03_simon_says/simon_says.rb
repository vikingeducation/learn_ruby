def echo words
  words
end
def shout words
  echo words.upcase
end
def repeat words, times=2
  echo words+(" "+words)*(times-1)
end
def start_of_word word, num
  letters = word.split("")
  start = letters[0...num]
  start.join
end
def first_word sentence
  words = sentence.split(" ")
  words[0]
end
def titleize sentence
  small = ["and", "or", "the", "over", "to", "the", "a", "but"]
  i = 0
  words= sentence.split(" ").map! do |word|
    i += 1
    if (small.include?(word) && i != 1)
      word
    else
      word.capitalize
    end
  end.join(" ")
end