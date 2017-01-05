def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, t=2)
  result = word
  (t-1).times do
    result = result + " " + word
  end
  result
end

def start_of_word(word, num)
  word.slice(0, num)
end

def first_word(phrase)
  phrase.split(" ")[0]
end

def titleize(phrase)
  result = ""
  phrase.split(" ").each_with_index do |word, index|
    if index == 0
      result = result + word.capitalize + " "
    else
      if word == "and" || word == "the" || word == "over"
        result = result + word + " "
      else
        result = result + word.capitalize + " "
      end
    end
  end
  result.strip
end