def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n = 2)
  repeats = []

  n.times do 
    repeats << string
  end

  return repeats.join(" ")
end

def start_of_word(string, n)
  string[0...n]
end

def first_word(string)
  string.split(" ")[0] 
end

def titleize(string)
  littlewords = ["the", "and", "over", "between", "under", "a", "an"]
  words = string.downcase.split(" ")
  title = ""
  
  words.each do |word|
    if !littlewords.include?(word)
      title << (" " + word[0].upcase + word[1..-1])
    else
      title << (" " + word)
    end
  end
  title = title[1..-1]
  title = title.sub(title[0], title[0].upcase)
end