def translate(words)
  vowels = ["a", "e", "i", "o", "u"]
  result = ""
  words.split(" ").each do |word|
    if vowels.include?(word[0])
      result += word + "ay" + " "
    else
      while !vowels.include?(word[0])
        if word.slice(0, 2) == "qu"
          word = word.slice(2, word.length) + word.slice(0, 2)
        else
          word = word.slice(1, word.length) + word[0]
        end
      end
      result += word + "ay" + " "
    end
  end
  result.strip
end