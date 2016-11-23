
def translate(string)
  words = string.split(" ")
  return_string = []
  vowels = ["a", "e", "i", "o", "u"]
  words.each do |word|
    if vowels.include?(word[0])
      return_string << word + "ay"
    else
      characters = word.split("")
      beginning_consontants = 1
      until vowels.include?(characters[beginning_consontants])
        beginning_consontants += 1
      end
      if word[(beginning_consontants - 1)..beginning_consontants] == "qu"
        return_string << word[(beginning_consontants + 1)..(word.length - 1)] + word[0..beginning_consontants] + "ay"
      else
      return_string << word[beginning_consontants..(word.length - 1)] + word[0..(beginning_consontants - 1)] + "ay"
      end
    end
  end
  return return_string.join(" ")
end
