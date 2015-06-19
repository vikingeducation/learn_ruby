def translate(text)
  words = text.split(" ")
  p words

  modified_words = words.map do |word|
    word = word.split("")

    first_vowel_index = word.index do |letter|
      letter == "a" || 
      letter == "e" || 
      letter == "i" || 
      letter == "o" #|| 
#      letter == "u"
    end

    word.rotate!(first_vowel_index)
    word << "a" << "y"
    word.join
  end

  modified_words.join(" ")
end