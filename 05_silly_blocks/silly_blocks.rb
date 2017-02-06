def word_reverse(string)
  reverse_string = ""

  i = -1
  string.length.times do
    reverse_string += string[i]
    i -= 1
  end

  reverse_string
end

def reverser
  text = yield.to_s.split

  text.each_with_index do |word, i|
    text[i] = word_reverse(word).downcase
  end

  text = text.join(" ")
end

def adder(n = 1)
  yield + n
end

def repeater(n = 1)
  n.times { yield }
end