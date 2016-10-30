def translate(someString)
	words = someString.scan(/[a-zA-Z]+/)
	pig_latin = someString.dup

	words.each do |word|
		capitalized = false

		case word[0].downcase
		when 'a','e','i','o','u'
			pig_latin.gsub!(word, word + "ay")
		else
			capitalized = true if /[[:upper:]]/.match(word[0])

			pig_latin_word = word.dup

			pig_latin_word.gsub!(/qu|Qu/, '*')

			index = pig_latin_word.downcase.index(/[aeiou]/)
			firstPart = pig_latin_word[0..index-1]

			pig_latin_word = ( pig_latin_word[index..-1]+firstPart+"ay" )

			pig_latin_word.gsub!('*', "qu") 

			pig_latin_word.capitalize! if capitalized
			
			pig_latin.gsub!(word, pig_latin_word)
		end
	end
	
	pig_latin
end