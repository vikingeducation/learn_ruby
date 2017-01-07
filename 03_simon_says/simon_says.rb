def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, num=2)
	holder = []
	num.times do
		holder.push(word)
	end
	return holder.join(" ")
end

def start_of_word(words, num)
  return words[(0..num-1)]
end

def first_word(words)
	word = words.split(" ")
	return word[0]
end

def titleize(title)
   skip = ["a","an","and","the","or","over","of"]
   titles = []
   title.split.each_with_index do |word, i|
     if skip.include?(word) && i != 0
       titles.push(word)
    else
      titles.push(word.capitalize)
    end
   end
   titles.join(" ")
end