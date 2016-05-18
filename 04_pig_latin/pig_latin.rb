def translate(str)
  str.split.map{|word| translate_word(word) }.join(" ")
end

def translate_word(word)
  original = word.dup
  vowels = %w(a e i o u)
  if vowels.include?(word[0])
    word << "ay"
    word.capitalize! if original[0] == original[0].upcase
    word
  else
    until vowels.include?(word[0])

    word << word.slice!(0).downcase

    if word[0] == "u" && word[-1] == "q"
      word << word.slice!(0).downcase
    end
    end
    word << "ay"
    word.capitalize! if original[0] == original[0].upcase
    word
  end

end