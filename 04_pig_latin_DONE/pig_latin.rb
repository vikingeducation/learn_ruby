def translate(words)
  capitalized = false
  pig_latin_sentence = []
  punctuation = nil
  vowels = ["a","e","i","o","u","y"]

  #SPLITTING UP MULTIPLE WORDS INTO AN ARRAY
  original_words = words.split(' ')

  #GOING THROUGH EACH WORD
  original_words.each do |word|

    punctuation = nil

    #SAVING THE LAST PUNCTUATION
    if !(("A".."Z").include? word.split('')[-1]) && !(("a".."z").include? word.split('')[-1])
      word = word.split('')
      punctuation = word.pop
      word = word.join('')
    end

    #FINDING OUT IF WORD IS CAPITALIZED
    if ("A".."Z").include? word[0]
      capitalized = true
    end

    #ROTATING AND ADDING AY
    if vowels.include? word[0]
      pig_latin_word = word + "ay"
    else
      letters_array = word.split('')

      letters_array.each_with_index do |letter, index|

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

    if punctuation != nil
      pig_latin_word = pig_latin_word + punctuation
    end

    #CAPITALIZED
    if capitalized == true
      pig_latin_sentence << pig_latin_word.downcase.capitalize
      capitalized = false
    else
      pig_latin_sentence << pig_latin_word
    end

  end

    pig_latin_sentence.join(' ')

end