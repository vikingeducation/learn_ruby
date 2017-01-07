def translate(words)
  vowels = ["a", "e", "i", "o", "u"]
  words_array = words.split(" ")
  new_phrase = []
  words_array.each do |word|
    new_word = ""
    indi_word_array = word.split("")
    if vowels.include?(word[0])
      new_word = word + "ay"
    else
      counter = 0
      word_ender = ""
      until vowels.include?(word[counter]) && word[counter - 1] != "q"
        word_ender += word[counter]
        counter += 1
      end
      new_word = word[counter..word.length - 1] + word_ender + "ay"
    end
    new_phrase << new_word
  end
  new_phrase.join(" ")
   
  
  
end