def translate(sentance)
	phrase = sentance.clone

	#If phrase contains more than 1 word recursivly solve
	if phrase.index(" ")
		phrase = phrase.split(" ")
		phrase.map! { |word| word = translate(word)}
		phrase.join(" ")

	#if Vowel at start, just add ay to end
	elsif isVowel(phrase[0])
		phrase << "ay"

	#If 3 consanants, shift to end and add "ay"
	elsif isConsanants(phrase[0..2])
		phrase = phrase.split("")
		c = phrase.shift << phrase.shift << phrase.shift
		phrase << c << "ay"
		phrase.join

	##If 2 consanants, shift to end and add "ay"
	elsif isConsanants(phrase[0..1])
		phrase = phrase.split("")
		c = phrase.shift << phrase.shift
		phrase << c << "ay"
		phrase.join

	#If 1 consanant, shift to end and add "ay"
	elsif isConsanants(phrase[0])
		phrase = phrase.split("")
		c = phrase.shift
		phrase << c << "ay"
		phrase.join
	end
end

def isVowel(c)
	c.index(/[aeiouAEIOU]/) == nil ? false : true
end

def isConsanants(chars)
	#swap out the 'u' in 'qu' for the purpose considering 'qu' a consanant
	chars.gsub!("qu", "qq") if chars.include?("qu")
	chars.split("").each { |c| return false if isVowel(c) }
	true
end