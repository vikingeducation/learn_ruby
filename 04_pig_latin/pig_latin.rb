def translate(origin_phrase)
  origin_words = origin_phrase.split(' ')
  vowels = ['a','e','i','o','u']
  origin_words.each_with_index do |origin_word, index|
    if vowels.include?(origin_word[0])
      origin_words[index] = "#{origin_word}ay"
    elsif !vowels.include?(origin_word[0]) && !vowels.include?(origin_word[1]) && !vowels.include?(origin_word[2]) || origin_word[1..2] == "qu"
      first_letters = origin_word[0..2]
      origin_words[index] = origin_word.delete(first_letters) + first_letters + "ay"
    elsif !vowels.include?(origin_word[0] && origin_word[1]) || origin_word[0..1] == "qu"
      first_letters = origin_word[0..1]
      origin_words[index] = origin_word.delete(first_letters) + first_letters + "ay"
    else
      first_letter = origin_word[0]
      origin_words[index] = origin_word.delete(first_letter) + first_letter + "ay"
    end
  end
  origin_words.join(' ')
end

#print translate("bhanana hammoc flhammoc apple quick square")