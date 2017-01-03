def translate(input)
  must_capitalize = true if input.capitalize == input
  vowels = %w(a e i o u)
  words_to_translate = input.split(' ')
  translated_word = []
  words_to_translate.each do |word|
    if vowels.include?(word[0])
      translated_word << word + 'ay'
    else
      ind = 0
      ind += 1 until vowels.include?(word[ind]) && (word[ind-1] + word[ind] != 'qu')

      translated_word << word.slice(ind...word.size) + word.slice(0...ind) + 'ay'
    end
  end

  return translated_word.join(' ').capitalize if must_capitalize
  return translated_word.join(' ')
end
