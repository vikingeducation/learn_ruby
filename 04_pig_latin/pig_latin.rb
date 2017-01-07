def translate(text)
  words = text.split
  vowels = [ "a", "e", "i", "o", "u" ]

  translated_words = words.map do |word|
    chars = word.chars

    if vowels.include?(chars.first) # word begins with a vowel
      "#{word}ay"
    else # word begins with a consonant
      consonants = chars.take_while { |char| !vowels.include?(char) }
      rest_of_the_chars = chars[consonants.length..-1]

      if consonants.last == "q" && rest_of_the_chars.first == "u"
        "#{rest_of_the_chars[1..-1].join}#{consonants[0...-1].join}quay"
      else
        "#{rest_of_the_chars.join}#{consonants.join}ay"
      end
    end
  end

  translated_words.join(" ")
end

