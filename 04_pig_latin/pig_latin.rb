def translate(text)
  words = text.split("")
  words.each do |word|
    first_vowel_index = word.index do |letter| 
      letter == ("a" || "e" || "i" || "o" || "u") 
    end
    word.rotate(first_vowel_index + 1)
  end
end