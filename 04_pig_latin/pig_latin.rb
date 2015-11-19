def translate(words)
  pig_latin_sentence = []
  vowels = ["a","e","i","o","u","y"]

original_words = words.split(' ')
original_words .each do |word|

  if vowels.include? word[0]
    pig_latin_word = word + "ay"
  else
    letters_array = word.split('')
    letters_array.each do |letter|
      if vowels.include? letter
        pig_latin_word = letters_array.join('') + "ay"
        break
      elsif letters_array[0] == "q" && letters_array[1] == "u"
        letters_array = letters_array.rotate.rotate
      else
        letters_array = letters_array.rotate
      end
    end
  end
  pig_latin_sentence << pig_latin_word
end

  pig_latin_sentence.join(' ')

end

if ("A".."Z").include? "c"
  puts "it's a downcase letter"
else
  puts "it's an uppercase letter"
end