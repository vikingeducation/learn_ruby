def translate(words)
  def translate_word(word)
    def move_first_to_last(starts_w_cons)
      move_front = starts_w_cons[0]
      starts_w_cons[0] = ""
      if move_front == "q"
        move_front += "u"
        starts_w_cons[0] = ""
      end
      starts_w_cons + move_front
    end
    vowels = ["a", "e", "i", "o", "u", "y"]

    until vowels.include?(word[0])
      word = move_first_to_last(word)
    end

    word + "ay"
  end

  words_array = words.split(" ")
  return_string = ""
  words_array.each do |w|
    return_string += translate_word(w) + " "
  end
  return_string.strip
end