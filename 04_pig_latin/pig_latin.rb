def translate(str)
	vowels = %w(a e i o u)
	words = str.split
	words.each do |word|
		if vowels.include?(word[0])
			word << "ay"
		elsif word.start_with?("qu")
			firsts = word.slice!(0,2)
			word << "#{firsts}ay"
		elsif vowels.include?(word[1])
			first = word.slice!(0)
			word << "#{first}ay"
		elsif word.start_with?("squ")
			firsts = word.slice!(0,3)
			word << "#{firsts}ay"
		elsif vowels.include?(word[2])
			firsts = word.slice!(0,2)
			word << "#{firsts}ay"
		elsif vowels.include?(word[3])
			firsts = word.slice!(0,3)
			word << "#{firsts}ay"
		end
	end
	return words.join(' ')
end