$VOWELS = %w[a e i o u]

def translate string
  string.split(' ').map do |word|
    if (all_consonants? word[0..2]) || (cons_qu_phoneme? word[0..2]) #3 beginning consonsants or consonant plus "qu"
      cap_char?(word[0]) ? (word[3..-1] + word[0..2] + "ay").capitalize : word[3..-1] + word[0..2] + "ay"
    elsif (all_consonants? word[0..1]) || (qu_phoneme? word[0..1]) #2 beginning consonants or "qu"
      cap_char?(word[0]) ? (word[2..-1] + word[0..1] + "ay").capitalize : word[2..-1] + word[0..1] + "ay"
    elsif all_consonants? word[0] #begining consonant
      cap_char?(word[0]) ? (word[1..-1] + word[0] + "ay").capitalize : word[1..-1] + word[0] + "ay"
    else ##if first letter is vowel #beginning vowel
      cap_char?(word[0]) ? (word + "ay").capitalize : word + "ay"
    end
  end.join(' ')
end

def cap_char? char
  ("A".."Z") === char
end

def all_consonants? string
  not string.split('').any?{|letter| $VOWELS.include?(letter)}
end

def cons_qu_phoneme? string
  all_consonants?(string[0]) && qu_phoneme?(string[1..2])
end

def qu_phoneme? string
  string.downcase == "qu"
end
