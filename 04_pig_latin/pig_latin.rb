VOWELS = ['a', 'e', 'i', 'o', 'u']

def translate(string)
  words = string.split(" ")

  return words.map do |word|
      translate_word word
  end.join(" ")
  
end


def translate_word(word)
  
  working_index = nil
  group1, group2, groups = '', '', ''
  
  if word[0..1] == 'qu' || word[1..2] == 'qu'
    regex = word.scan(/\As?q[a-z]/)
    working_index = regex[0].length
    group1 = word[0...working_index]
    group2 = word[working_index..-1]

  elsif !(VOWELS.include? word[0])
    regex = word.scan(/\A[^aeiou]+/)
    working_index = regex[0].length
    group1 = word[0...working_index]
    group2 = word[working_index..-1]
    
  else
    group2 = word
  end
    
  groups = group2 + group1
  if groups.end_with? 'a'
    return groups + 'y'
  else
    return groups + 'ay'
  end
  
end


