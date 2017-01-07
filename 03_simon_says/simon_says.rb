def echo(string)
  return string
end


def shout(string)
  return string.upcase
end


def repeat(string, times=2)
  return ((string + " ") * times).strip
end


def start_of_word(string, letters=1)
  return string[0,letters]
end


def first_word(string)
  return string.split(" ")[0]
end


def titleize(string)
  string.capitalize!
  small_words = ["and", "the", "in", "over"]
  title = string.split(" ").map { |word|
    if small_words.include? word
      word
    else
      word.capitalize
    end
  }.join(" ")
  title.strip
end