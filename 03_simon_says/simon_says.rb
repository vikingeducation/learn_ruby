def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string,reps=1)
  output = string
  reps.times do
    output += " #{string}"
  end
  output
end

def start_of_word(string,length=1)
  string[0,length]
end

def first_word(string)
  string.split(" ")[0]
end

def titleize(string)
  smallWords = %w{a and after the this that there over under above below}
  words = string.split(" ")
  idx = 0
  words.map do |word|
    word = word.capitalize if idx == 0 || smallWords.none?{|small| small == word}
    idx += 1
  end
  words.join(" ")
end
