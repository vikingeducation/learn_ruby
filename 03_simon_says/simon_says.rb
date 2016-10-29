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
  word.split("").first(num).join("")
end

def first_word(word)
  word.split(" ").first.to_s
end

def titleize(word)
  array = ["and", "the", "of", "in", "at", "on", "over"]

  word = word.split(" ").each_with_index do |w, i|
    if array.include?(w) && i == 0
      w.capitalize!
    elsif !array.include?(w)
      w.capitalize!
    end
  end
  word.join(" ")
end
