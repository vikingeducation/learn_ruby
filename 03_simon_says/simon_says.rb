#write your code here
def echo(a)
  a
end

def shout(a)
  a.upcase
end

def repeat(*args)
  if args.length == 1 
	return args[0] + " " + args[0]
  else
	return ([args[0]] * args[1]).join(" ")
  end
end

def start_of_word(word, position)
  word[0..position-1]
end

def first_word(word)
  word.split[0]
end

def titleize(sentence)
  words = sentence.split
  words_two = []
  little_words = ["and", "or", "the", "over"]
  for i in 0..words.length-1
	if little_words.include? words[i] and i != 0 
	  words_two.push(words[i])
	else
	  words_two.push(words[i].capitalize)
	end
  end
  return words_two.join(" ")
end
