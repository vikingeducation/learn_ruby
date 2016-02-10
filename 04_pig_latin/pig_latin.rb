def translate_word(word)

    characters = word.split(//)
    vowels = ["a", "e", "i", "o", "u"]
    consonant = ""
    while(!vowels.include?(characters[0]))
        characters.each_with_index do |letter, index|
                if(!vowels.include?(letter) && index == 0)
                    consonant = characters.shift
                    characters.push(consonant)
                    if(letter == "q" && characters[0] == "u")
                        consonant = characters.shift
                        characters.push(consonant)
                    end
                else
                    break
                end

        end
    end
    return characters.join("") + "ay"
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