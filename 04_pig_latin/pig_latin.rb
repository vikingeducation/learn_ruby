require 'pry'
def translate(str)

  str.downcase!
  # split string into words
  words = split_str(str)

  # split word into letters
  letters = split_words(words)

  # until reach a vowel (unless qu), unshift consonants
  # and push those consonants to an end_of_word array
  # append the end_of_word array to the array
  # append the 'ay' array to the array
  pig_latinned_arrays = move_consonants(letters)

  # join the letters array
  # join the word array
  # return the array
  pig_latinned_string = join_arrays(pig_latinned_arrays)
  return pig_latinned_string

end

def split_str(str)
  str.split(' ')
end

def split_words(words)
  letters = words.map do |word|
    word.split('')
  end
  letters
end

def move_consonants(letters)
  vowels = ['a','e','i','o','u']
  ay = ['a','y']
  letters.each do |word|
      consonants_array = []
    until vowels.include?(word[0])
      if word[0] == 'q' && word[1] == 'u'
        2.times do |i|
          consonants_array << word.shift
        end
      else
        consonants_array << word.shift
      end        
    end
    word.concat(consonants_array).concat(ay)
  end
  letters
end

def join_arrays(pig_latinned_arrays)
  joined_words = []
  pig_latinned_arrays.each do |word|
    joined_words << word.join('')
  end
  joined_words.join(' ')
end