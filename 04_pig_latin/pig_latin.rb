def translate phrase
  words = phrase.split(' ')
  translated_words = []
  words.each do |word|
    letter = 0
    consonants_stop = 0
    while word[letter].match(/[aeiou]/).nil?
      consonants_stop += 1
      letter += 1
    end

    # check for 'qu'
    if word[consonants_stop - 1, 2] == 'qu'
      consonants_stop += 1
    end

    if consonants_stop == 0
      translated_words << word + 'ay'
    else
      translated_words << word[consonants_stop, word.length] + word[0, consonants_stop] + 'ay'
    end
  end

  translated_words.join(' ')
end