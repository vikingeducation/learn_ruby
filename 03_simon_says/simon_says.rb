

def echo word
  word
end

def shout word
  word.upcase
end

def repeat word, iterations=2
  repeats = []
  iterations.times { repeats << word }
  repeats.join(" ")
end

def start_of_word word, amount
  word.slice(0, amount)
end
  
def first_word words
  words.split(" ")[0]
end

def titleize string
  array = string.split(" ")
  
  array.map.with_index do |word, index|
  	 (index == 0) || (word == array[-1]) || (word.length > 4) ? word.capitalize : word
  end.join(" ")
end