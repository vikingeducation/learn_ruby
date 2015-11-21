def translate(words)
  capitalized = false
  pig_latin_sentence = []
  vowels = ["a","e","i","o","u","y"]

original_words = words.split(' ')
original_words .each do |word|

  if ("A".."Z").include? word[0]
    capitalized = true
  end

  if vowels.include? word[0]
    pig_latin_word = word + "ay"
  else
    letters_array = word.split('')
    letters_array.each_with_index do |letter, index|

=begin
      if !(("a".."z").include? letter) || !(("A".."Z").include? letter)
        puts "THIS WORKS!"
      end
=end

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

  if capitalized == true
    pig_latin_sentence << pig_latin_word.downcase.capitalize
    capitalized = false
  else
    pig_latin_sentence << pig_latin_word
  end

end

  pig_latin_sentence.join(' ')

end

=begin
if the symbol is not included in
(a..z) or (A..Z) then save it's index number

if index is letters_array.size - 1 then we're going to insert the punctuation at -1
if not we'll save it's position and just it at the same index later. 

first you need to save that letter and then delete it from 
the array
=end