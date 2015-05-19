def translate(words)
  my_words = words.split(" ")
  my_words.each_with_index do |word, index|
    # Create word_map to detect vowels and consonant indices.
    word_map = map_word(word)

    #Check for consonant
    if word_map[0] =="C"
      word = move_to_back(word)
      if word_map[1] =="C"
        word = move_to_back(word)
        if word_map[2] =="C"
          word = move_to_back(word)
        end
      end
    end
    my_words[index] = word + "ay"
  end
  my_words.join(" ")
end




#Takes word and returns map of vowels and consonants.
def map_word(word)
  vowels =["a", "e", "i", "o", "u"]
  word_map = ""
  word.split("").each_with_index do |letter, index|
    # To handle "qu" treats "u" after "q" as a consonant.
    if letter == "u" && word[index - 1] == "q"
      word_map[index] = "C"

    elsif vowels.include?(letter)
      word_map[index] = "V"
    else
      word_map[index] = "C"
    end
  end
  word_map
end

def move_to_back(word)
  word_array = word.split("")
  first_letter = word_array.shift
  word_array.push(first_letter)
  word = word_array.join("")
end
