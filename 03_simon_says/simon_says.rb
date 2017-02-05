def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, n_times = 2)
  repeat_s = s
  repeat_s += " #{s}" * (n_times - 1)
end

def start_of_word(word, characters)
  partial_word = ""

  characters.times do |c|
    partial_word += word[c]
  end

  partial_word
end

def first_word(words)
  first_word = ""

  i = 0
  until words[i] == " " do
    first_word += words[i]
    i += 1
  end

  first_word
end


def titleize(phrase)
  word = ""
  words = []

  phrase.length.times do |i|
    if phrase[i] == " "
      words.push(word.downcase)
      word = ""
    else i == phrase.length - 1
      word += phrase[i]
    end
    words.push(word.downcase) if i == phrase.length - 1
  end

  words.each_with_index do |word, i|
    words[i][0] = word[0].upcase unless word == "the" || word == "and" || word == "over"
    words[i][0] = word[0].upcase if i == 0
  end

  words = words.join(" ")
end
