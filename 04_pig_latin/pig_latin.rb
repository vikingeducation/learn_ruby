require 'pry'

def translate (string)
#  binding.pry
  vowel = ["a", "e", "i", "o", "u"]
  phoneme = ["qu"]
  translation = []
  words = string.split(" ")
  words.each do |word|
    word.downcase == word ? capitalize = false : capitalize = true

    punctuation = ""
    if /[^a-zA-Z]/ === word[-1]
      punctuation = word[-1]
      word = word.chop
    end

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
    word = word.downcase
    word.capitalize! if capitalize
    translation << word + punctuation
  end
  translation.join(" ")
end

puts translate("Cherry!")