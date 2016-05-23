def translate(sentence)
  pig_latin_words = []
  sentence = sentence.split(" ")

  sentence.each do |word|
    cons = ""
    word.each_char do |letter|


      if !["a", "e", "i", "o", "u", "y"].include?(letter.downcase) && letter != "q"
        cons << letter
        word = word.delete(word[0])
      elsif letter.downcase == "q"
        cons << letter
        cons << "u"
        word = word.delete(word[0])
        word = word.delete(word[0])
      else
        break
      end

    end
    pig_latin_words << word + cons + "ay"
  end
  return pig_latin_words.join(" ")
end