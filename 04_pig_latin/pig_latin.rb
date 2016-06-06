def translate(word)

	words = word.split(" ")
	words.map! {|word| word_pigged(word)}
	words.join(" ")

end

def word_pigged(word)
	if word[0] =~ /[aeiou]/
		# temp = word[0]
		word = word + "ay" 
	elsif word[0..1] == "qu"
		temp = word[0..1]
		word[0..1] = ''
		word = word + temp + "ay"
	elsif word[0] !=~ /[aeiou]/
		temp = ''
		until word[0] =~ /[aeiou]/
			if word[0..1] == "qu"
				temp += word[0..1] 
				word[0..1] = ''
				break
			end
			temp += word[0]
			word[0] = ''
		end	
		word = word + temp + "ay"
	end
end


# translate("orange")
# puts translate("red three")
# puts translate("quack")
# puts translate("square")