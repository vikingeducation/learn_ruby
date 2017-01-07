def translate(phrase)
  vowels = ["a", "e", "i", "o", "u"]
  phonemes = ["qu", "sch"]
  translated_words = []

  words = phrase.split(" ")

  words.each do |word|
    letters = word.split("")

    # treating "qu" as individual phoneme
    letters.each_index do |index|
      if letters[index] == "q"
        if letters[index+1] == "u"
          2.times { letters.delete_at(index) } # deletes "q", "u"
          letters.insert(index, "qu")
        end
      end
    end

    if vowels.include?(letters[0]) # starting with a vowel
      letters << "ay"
    # treating "sch" as phoneme
    elsif letters[0, 3] == ["s", "c", "h"] 
      3.times { letters.shift }
      letters << "sch"
      letters << "ay"
    # 1 consonant then vowel
    elsif !vowels.include?(letters[0]) && vowels.include?(letters[1])
      moving_letter = letters.shift
      letters << moving_letter
      letters << "ay"
    # 2 consonants then vowel
    elsif !vowels.include?(letters[0]) && !vowels.include?(letters[1]) && vowels.include?(letters[2])
      moving_letters = []
      2.times { moving_letters << letters.shift }
      letters += moving_letters
      letters << "ay"
    # 3 consonants then vowel
    elsif !vowels.include?(letters[0]) && !vowels.include?(letters[1]) && !vowels.include?(letters[2])
      moving_letters = []
      3.times { moving_letters << letters.shift }
      letters += moving_letters
      letters << "ay"
    end


    translated_words << letters.join
  end

  translated_phrase = translated_words.join(" ")
  translated_phrase.strip
end