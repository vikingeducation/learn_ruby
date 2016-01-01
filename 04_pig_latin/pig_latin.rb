$vowels = ['a', 'e', 'i', 'o', 'u']


def find_consonants(word)
  # returns all consonants at the beginning of the word before the first vowel
  letters = word.split(//)
  letters.each_with_index do |letter, index|
    # handle qu, treat it as a consonant
    if $vowels.include? letter and letters[index-1] == "q"
      cons = letters[0, index+1]
      rest = letters[index+1, word.length]
    elsif $vowels.include? letter
      cons = letters[0, index]
      rest = letters[index, word.length]
      return cons, rest
    end
  end
end


def handle_consonants(word)
  cons, rest = find_consonants(word)
  new_word = rest.join + cons.join + "ay"
  return new_word
end


def translate(string)
  words = string.split(" ")
  new_phrase = []

  words.each do |word|
    # handle word with vowel at the beginning
    if $vowels.include? word[0] 
      new_word = word + "ay"
      new_phrase << new_word
    # handle consonants
    else
      new_word = handle_consonants(word)
      new_phrase << new_word
    end
  end
    return new_phrase.join(" ").strip
end

