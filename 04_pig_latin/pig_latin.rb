def translate(sentence)
  arr_of_words = sentence.split(" ")
  vowels = ["a","e","i","o","u"]

  arr_of_words.each_with_index do |word,index|

    char = 0
    consonants = ""

    until vowels.include?(word[char])
      if word[char..char+1] == "qu"
        char += 2
        consonants += "qu"
      else
      consonants += word[char]
      char += 1
      end
    end
    
    arr_of_words[index] = word[consonants.length..-1] + consonants + "ay"

  end
  return arr_of_words.join(" ")  
end

puts translate("square")