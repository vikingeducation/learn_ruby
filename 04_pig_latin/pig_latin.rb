# Helper function that converts individual word to pig latin.
def latinize(word)
  consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
  vowels = %w[a e i o u]

  # Vowel case
  if vowels.include?(word[0])
    return word + 'ay'

  # Triple Consonant case
  elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
    return word[3..-1] + word[0..2] + "ay"

  # Phenome cases
  elsif word[0..1] == "qu"
    return word[2..-1] + "quay"
  elsif word[0..2] == "squ" || word[0..2] == "sch"
    return word[3..-1] + word[0..2] + "ay"

  # Double Consonant case
  elsif consonants.include?(word[0]) && consonants.include?(word[1])
    return word[2..-1] + word[0..1] + "ay"

  # Single Consonant case
  else consonants.include?(word[0])
    return word[1..-1] + word[0] + "ay"
  end
end

# Converts all words properly to pig latin.
def translate(words)
  words.split(" ").map{|word| latinize(word)}.join(" ")
end