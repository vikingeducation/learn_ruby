def echo(echo)
  echo
end

def shout(echo)
  echo.upcase
end

def repeat(word, num = 2)
  word = "#{word + " "}" * num
  word.rstrip
end

def start_of_word(word, num)
  word = word.split("").first(num).join("")
end

def first_word(word)
  word.split(" ").first.to_s
end

def titleize(word)
  word.split.map {|w| w[0].upcase + x[1..-1].join(" ")}
end
