# TDD RSpec
# pig_latin_spec.rb

def translate(words)

  word_arr = words.split(" ")

  # Check one word at time
  word_arr.each_with_index do |word, i|
    j = 0
    not_vowels = ""
    continguous_con = true

    # If it is a vowel, just append "ay"
    if(is_vowel(word,0))
      word.concat("ay")
    else
      # Checks first 3 characters of a word
      while j < 3
        if((is_vowel(word,j) == false) && continguous_con)
          not_vowels += word[j]
        else
          continguous_con = false
        end
        j += 1
      end

      num_of_con = not_vowels.length
      word_arr[i] = word.slice!(num_of_con..-1).concat(not_vowels) + "ay"
    end
  end

  word_arr.join(" ")
end


# Returns true or false if the letter is a vowel
def is_vowel(word, pos)
  vowels = ["a", "e", "i", "o"]
  is_vowel = false
  vowels.each do |vowel|
    if(word[pos] == vowel)
      is_vowel = true
    end
  end
  return is_vowel
end


