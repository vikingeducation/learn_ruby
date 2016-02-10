def translate_word(string)

    word = string.split(//)
    vowels = ["a", "e", "i", "o", "u"]
    consonant = ""
    while(!vowels.include?(word[0]))
        word.each_with_index do |letter, index|
                if(!vowels.include?(letter) && index == 0)
                    consonant = word.shift
                    word.push(consonant)
                    if(letter == "q" && word[0] == "u")
                        consonant = word.shift
                        word.push(consonant)
                    end
                else
                    break
                end

        end
    end
    return word.join("") + "ay"
end

def translate(string)
    if(string.include?(" "))
          sentence = string.split(" ")
          pig_phrase = []
          sentence.each do |word|
              pig_phrase.push(translate_word(word))

          end
          return pig_phrase.join(" ")
    else
            translate_word(string)
    end

end