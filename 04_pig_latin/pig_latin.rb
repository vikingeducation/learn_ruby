def translate(words)
  vowels = ['a', 'e', 'i', 'o', 'u']
  special_sequences = ['qu', 'squ']

  words = words.split(' ').each do |word|

    # deal with words that start with vowel
    next if starts_with_vowel?(word, vowels)

    # deal with words that start with special sequence
    next if starts_with_special_sequence?(word, special_sequences)

    # deal with words that start with consonant
    next if starts_with_consonant(word, vowels)

  end

  words.join(' ')

end

def starts_with_consonant(word, vowels)
  i = word.length - 1
  vowels.each do |vowel|
    unless word.index(vowel).nil?
      if word.index(vowel) < i
        i = word.index(vowel)
      end
    end
  end
  start = word.slice!(0...i)
  word << start + 'ay'

end

def starts_with_vowel?(word, vowels)
  if vowels.include?(word[0])
    word << 'ay'
    return true
  end
  false
end

def starts_with_special_sequence?(word, sequences)
  sequences.each do |seq|
    if word.index(seq) == 0
      word.slice!(0...seq.length)
      word << seq + 'ay'
      return true
    end
  end
  false
end
