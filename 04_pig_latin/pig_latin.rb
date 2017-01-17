def translate (words)
  result = words.split(' ').each do |word|

    #check for 'qu'
    if word.index('qu')
      word.insert(-1, word[0..word.index('qu')+1])
      word.slice!(0..word.index('qu')+1)
      word << 'ay'
      next

      #check if first 3 letters are consonants
    elsif word[0] =~ (/[^aeiou]/) && word[1] =~ (/[^aeiou]/) && word[2] =~ (/[^aeiou]/)
      word.insert(-1, word[0..2])
      word.slice!(0..2)
      word << 'ay'
      next

      #check if first 2 letters are consonants or word starts with 'qu'
    elsif word[0] =~ (/[^aeiou]/) && word[1] =~ (/[^aeiou]/)
      word.insert(-1, word[0..1])
      word.slice!(0..1)
      word << 'ay'
      next

      #check if first letter is a consonant
    elsif word[0] =~ (/[^aeiou]/)
      word.insert(-1, word[0])
      word.slice!(0)
      word << 'ay'
      next
      #first letter will be a vowel
    else
      word << 'ay'
    end
  end
  result.join(' ')
end

# p translate('apple pie')
