def translate (word)
  word_array = word.split("")
  vowel_array = ["a", "e", "i", "o", "u"]


  if vowel_array.include? word_array[0]
    return word + "ay"
  else
    word_array << word_array[0]
    almost_pig_word = word_array.delete[0] 
    pig_word = word_array.join + "ay"
    return pig_word
  end
  
end


#new_word = word_array.insert(word_array.length-1, word_array.delete_at(0)) 

#go over with troy