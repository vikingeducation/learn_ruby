def translate(words)
  
  word_array = words.split
  pig_latin_word_array = []
  word_array.each do |word|
    i = find_first_vowel(word)

    if i == 0
      pig_latin_word_array << word + 'ay'
    else
      pig_latin_word_array << word[i..-1] + word[0..i-1] + 'ay'
    end
  end
  pig_latin_word_array.join(' ')
end

def find_first_vowel(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  first_vowel_index = word.split('').find_index {|char| vowels.include?(char)}

  # if char at first vowel index is 'u' and its preceding char is 'q'
  # then it is a phoneme special case and we want to ignore it and use the next_vowel_index
  if word[first_vowel_index-1] == 'q' && first_vowel_index != 0
    next_vowel_index = first_vowel_index+1 + word[first_vowel_index+1..-1].split('').find_index {|char| vowels.include?(char)}
  else
    first_vowel_index
  end
end
