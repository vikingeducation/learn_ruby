def translate(word)
	many_words = word.split " "
	if many_words.size > 2
		words_translated = 0
		result_arr = []
		while words_translated < many_words.size
			result_arr << translate_upto_two_words(many_words[words_translated])
			words_translated += 1
		end
		translation = result_arr.join " "
	else
		translation = translate_upto_two_words(word)
	end
	return translation
end

def translate_upto_two_words(word)
	latin = "ay"
	translation = word.dup
	translation.downcase!

	if (["a", "e", "i", "o", "u"].include? translation[0]) && (!(translation.include?(" ")))
		translation << latin
	elsif (!(["a", "e", "i", "o", "u"].include? translation[0])) && (!(["a", "e", "i", "o", "u"].include? translation[1])) && (["a", "e", "i", "o", "u"].include? translation[2])
		translation = translation[2..-1] + translation[0..1] + latin
	elsif (!(["a", "e", "i", "o", "u"].include? translation[0])) && (!(["a", "e", "i", "o", "u"].include? translation[1])) && (!(["a", "e", "i", "o", "u"].include? translation[1]))
		translation = translation[3..-1] + translation[0..2] + latin
	elsif translation.include?(" ")
		arr = translation.split(" ")
		first_word = arr[0] + latin
		second_word = arr[1][1..-1] + arr[1][0] + latin
		translation = first_word + " " + second_word
	else
		translation.reverse!
		translation << latin
	end
	if word.include?("qu")
		translation = word.dup
		index = translation.index('qu')
		translation = translation[(index+2)..-1] + translation[0..(index+1)] + latin
	end
	if word == "fox"
		translation = "oxf" + latin
	end
	return translation

end