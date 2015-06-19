def starts_vowel?(word)
  (word =~ /\A[aeiouy]/)? true : false
end

def second_cons?(word)
  (word[1] =~ /[^aeiou]/)? true : false
end

def third_cons?(word)
  (word[2] =~ /[^aeiou]/)? true : false
end

def starts_xqu?(word)
  word[1] == 'q' && word[2] == 'u'
end

def starts_qu?(word)
  (word =~ /\Aqu/)? true : false
end

def capitalized?(word)
  (word =~ /\A[[:upper:]]/) ? true : false
end


def translate (str)

  words = str.split
  i = 0
  translated_str = []

  #loop for strings with many words
  while i < words.length

    cap = false
    current_word = words[i]
    translated_word = ""

    if capitalized?(current_word)
      cap = true
      current_word.downcase!
    end

    if starts_vowel?(current_word)
      # aa = just add 'ay'
      translated_word = current_word + "ay"

    #word starts with a consonant, so check for two
    elsif second_cons?(current_word)

      #check for more consonants, else do ww or maybe xqu
      if third_cons?(current_word) || starts_xqu?(current_word)
        # xx = send three letters to back + 'ay'
        translated_word = current_word[3..-1] + current_word[0..2] + "ay"

      elsif #it only starts with two consonants
        # ww = send two consonants to back + 'ay'
        translated_word = current_word[2..-1] + current_word[0..1] + "ay"

      end

    #only one consonant but maybe qu
    elsif starts_qu?(current_word)
      # zz send 'qu' to back + 'ay'
      translated_word = current_word[2..-1] + current_word[0..1] + "ay"
    
    else #words starts with one consonant
      # bb = send consonant to back + 'ay'
      translated_word = current_word[1..-1] + current_word[0] + "ay"

    end

    if cap == true
      translated_word.capitalize!
    end

    translated_str << translated_word
    i+=1

  end

  return translated_str.join(' ')

end
