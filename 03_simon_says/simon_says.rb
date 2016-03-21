def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, times=2)
  say = ""
  (1..times).each do |i|
    say += "#{input}"
    if i != times
      say += " "
    end
  end
  return say
end

def start_of_word(input, n)
  say = ""
  (0...n).each do |i|
     say +="#{input[i]}"
  end
  return say
end

def first_word(sentence)
  words = sentence.split(' ')
  words[0]
end

def titleize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    if word.length >= 5 || words.first == word || words.last == word
      word[0] = word[0].upcase
    end
  end
  words.join(' ')
end