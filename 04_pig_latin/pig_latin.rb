def is_vowel?(character)
  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include?(character)
    true
  else
    false
  end
end


def consonants(string)
  result = ""
  first = string[0]
  second = string[1]
  third = string[2]

  if !is_vowel?(second) && !is_vowel?(third) || (second =="q" && third == "u")
    word_begin = string[0..2]
    result += string[3..-1] + word_begin + "ay"
  elsif !is_vowel?(second) || (first =="q" && second == "u")
    word_begin = string[0..1]
    result += string[2..-1] + word_begin + "ay"
  else
    result += string[1..-1] + first + "ay"
  end
end


def translate(string)
  split_words = string.split(" ")
  result = ""

  if split_words.length > 1
    translated = split_words.collect { |word| translate(word)}
    return translated.join(" ")
  end

  if is_vowel?(string[0])
    result += "#{string}ay"
  else
    consonants(string)
  end

end