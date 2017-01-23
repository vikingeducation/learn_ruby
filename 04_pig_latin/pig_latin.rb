def translate(sentence)
  words = sentence.split
  words = words.map { |word| translate_word(word) }
  words = words.map { |word| correct_capitalization(word) }
  words.join(" ")
end

def translate_word(word)
  vowels = %w(a e i o u)
  ay_sound = "ay"

  # word starts with a vowel
  if vowels.include?(word[0])
    return word + ay_sound
  end

  # word contains "qu" phoneme
  if has_qu_phoneme?(word)
    qu_index = word.index(/[Qq]u/)

    # word starts with "qu"
    if qu_index == 0
      return word[2..-1] + word[qu_index..qu_index + 1] + ay_sound
    else
      # "qu" is preceded by another character, check if it's a consonant
      if !vowels.include?(word[qu_index - 1])
        return word[qu_index + 2..-1] + word[qu_index - 1..qu_index + 1] + ay_sound
      end
    end
  end

  # word starts with a variable number of consonants (up to 3)
  case num_starting_consonants(word)
  when 1
    return word[1..-1] + word[0] + ay_sound
  when 2
    return word[2..-1] + word[0..1] + ay_sound
  when 3
    return word[3..-1] + word[0..2] + ay_sound
  end
end

# check how many consonants the word starts with
def num_starting_consonants(word)
  vowels = %w(a e i o u)
  count = 0
  
  word.downcase.chars.each do |char|
    vowels.include?(char) ? break : count += 1
  end

  count
end

# check if word has the "qu" phoneme
def has_qu_phoneme?(word)
  word.downcase[0..2].include?("qu")
end

def correct_capitalization(word)
  if word.downcase != word
    return word.downcase.capitalize
  else
    return word
  end
end
