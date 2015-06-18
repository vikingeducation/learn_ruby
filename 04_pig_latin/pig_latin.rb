

def translate (string)
  vowel = ["a", "e", "i", "o", "u"]
  phoneme = ["qu"]
  translation = []
  words = string.split(" ")
  words.each do |word|
    if vowel.include? word[0]
      word = word + "ay"
    else
      letter_index=0
      until vowel.include? word[letter_index]
        letter_index +=1
      end
      if phoneme.include? word[letter_index-1..letter_index]
        letter_index +=1
      end
      word = word[letter_index..-1] + word[0..letter_index-1] + "ay"
    end
    translation << word
  end
  translation.join(" ")
end

translate("cherry")