def translate(words)
  vowels = ["a","e","i","o","u"]
  punctuation = [".",",",";","?","!","—"]

  translated = []

  words.split.each do |word|
    ("A".."Z") === word[0] ? capital = true : capital = false

    if punctuation.include?(word[-1])
      end_punctuation = word[-1]
      word.chop!
    else
      end_punctuation = ""
    end

    if vowels.include?(word[0].downcase)
      translated << word + "ay" + end_punctuation
    else
      initial_consonants = ""
      index = 0

      until vowels.include?(word[index].downcase)
        initial_consonants += word[index]
        index+=1
      end

      if word[index].downcase=="u" && word[index-1].downcase=="q"
        initial_consonants += word[index]
        index+=1
      end

      translated << (capital ? word[(index..-1)].capitalize : word[(index..-1)]) + initial_consonants.downcase + "ay" + end_punctuation
    end
  end

  return translated.join(" ")
end