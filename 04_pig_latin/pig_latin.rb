def translate(phrase)
  words = phrase.split(' ')

  words.each_with_index do |word, i|
    translated_word = word.downcase

    case translated_word[0..2]
      when /thr/, /sch/, /[^aeiou]qu/
        translated_word += translated_word[0..2]
        translated_word = translated_word[3..-1]
      when /ch./, /qu./, /th./, /br./
        translated_word += translated_word[0..1]
        translated_word = translated_word[2..-1]
      when /[^aeiou]../
        translated_word += translated_word[0]
        translated_word = translated_word[1..-1]
      else

    end

    translated_word += "ay"
    words[i] = translated_word
  end

  words = words.join(" ")
end