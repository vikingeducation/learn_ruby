def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, times=2)
  if times <= 1
    s
  else
    s + " " + repeat(s, times - 1)
  end
end

def start_of_word(s, length)
  s[0...length]
end

def first_word(s)
  s.split(" ")[0]
end

def titleize(s)
  littlewords = ["the", "and", "over"]
  split = s.split(" ")
  capwords = split.each_with_index.map do |word, i|
    if i == 0 && split[0] == word
      word.capitalize
    elsif littlewords.include?(word)
      word
    else
      word.capitalize
    end
  end
  capwords.join(" ")
end

titleize("the bridge over the river kwai")
