def translate(phrase)
  english_words = phrase.split(" ")
  pig_latin_words = english_words.map do |word|
    translate_word word
  end
  pig_latin_words.join(" ")
end

def translate_word(word)
  first_vowel_index = /[aeiou]/ =~ word
  if word[first_vowel_index-1..first_vowel_index] == "qu"
    initial_consonants = word[0..first_vowel_index]
    rest_of_word = word[first_vowel_index+1..-1]
  else
    initial_consonants = word[0...first_vowel_index] || ""
    rest_of_word = word[first_vowel_index..-1]
  end
  rest_of_word + initial_consonants + "ay"
end