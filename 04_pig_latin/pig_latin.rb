def translate(words)
  pig_latin_sentence = ""
  vowels = ["a","e","i","o","u","y"]
  words.split.each
  if vowels.include? word[0]
    pig_latin_word = word + "ay"
  else
    pig_latin_word = word.split('')
    pig_latin_word.each do |letter|
      if vowels.include? letter
        pig_latin_word = pig_latin_word.join('') + "ay"
        break
      else
        pig_latin_word = pig_latin_word.rotate
      end
    end
  end
  pig_latin_sentence += pig_latin_word
end