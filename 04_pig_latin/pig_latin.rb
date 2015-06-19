def translate(text)
  word = text.split("")
  first_vowel_index = word.index do |letter|
    letter == ("a" || "e" || "i" || "o" || "u") 
  end
  word.rotate(first_vowel_index)
  word << "ay"
  word.join("")
end