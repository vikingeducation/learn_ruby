# TDD RSpec
# pig_latin_spec.rb

def translate(words)

  word_arr = words.split(" ")

  # Check one word at time
  word_arr.each_with_index do |word, i|
    if(is_vowel(word,0))
      word.concat("ay")
    else
      first_char = word[0]
      # puts "first_char #{first_char}"
      word_arr[i] = word[1..-1] + first_char + "ay"
    end
  end

  word_arr.join(" ")
  # puts "word_arr #{word_arr}"
end


# Returns true or false if the letter is a vowel
def is_vowel(word, pos)
  vowels = ["a", "e", "i", "o", "u"]
  is_vowel = false
  vowels.each do |vowel|
    if(word[pos] == vowel)
      is_vowel = true
    end
  end
  return is_vowel
end


translate("banana")