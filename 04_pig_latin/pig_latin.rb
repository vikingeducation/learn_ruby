def is_vowel? letter
  # binding.pry
  ['a', 'o', 'e', 'i'].include? letter
end

def vowel_position word
  # binding.pry
  word.split("").each_with_index do |value, index|
    return index if is_vowel? value
  end
end

def replace_word word
  # binding.pry
  word[vowel_position(word)..-1] + word[0...vowel_position(word)] + "ay"
end

def translate words
  result = []
  words.split(" ").each do |word|
    result << replace_word(word)
  end
  # binding.pry
  result.join(" ")
end
