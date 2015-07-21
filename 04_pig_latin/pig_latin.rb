$vow = ["a","e","i","o","u"]

def translate(words)
  words_array = words.split(" ")
  words_array.each do |item|
    item = pig_words(item)
  end
end

def pig_words(word)
  