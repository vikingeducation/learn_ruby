# TDD RSpec
# pig_latin_spec.rb

def translate(words)

  word_arr = words.split(" ")

  # Check one word at time
  word_arr.each_with_index do |word, i|
    max_check = 3
    j = 0
    not_vowels = ""
    continguous_con = true

    # If it is a vowel, just append "ay"
    if(is_vowel(word,0))
      word.concat("ay")
    else
      # Checks first 3 characters of a word
      while j < max_check
        # puts "continguous_con #{continguous_con} and j is #{j}"
        if((is_vowel(word,j) == false) && continguous_con)
          letter = word[j]
          # puts "letter is #{letter}"
          not_vowels += letter
        else
          continguous_con = false
          # puts "continguous_con was reached so its a vowel"
        end
        j += 1
         # puts "not_vowels #{not_vowels}"
      end

      num_of_con = not_vowels.length
      word_arr[i] = word.slice!(num_of_con..-1).concat(not_vowels) + "ay"
      # word.concat("ay")
    end
  end

  word_arr.join(" ")
  # puts "word_arr #{word_arr}"
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


translate("banana")