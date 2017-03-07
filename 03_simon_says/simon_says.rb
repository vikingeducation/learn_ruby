def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, n = 2)
  ([str] * n).join(' ')
end

def start_of_word(str, n)
	str.slice(0..(n-1))
end

def first_word(str)
	word_array = []
	word_array = str.split(" ")
	return word_array[0]	
end

def titleize(str)
  word_array = []
  new_array = []
  little_word = ["the", "and"]
  word_array = str.split(" ")
  word_array.each do |word|
  	if little_word.include?(word)
  	new_array << word
  else
  	new_array << word[0].upcase + word[1..-1]
  end
end
  puts new_array.join(" ")
end

titleize("Hello and world how are you")