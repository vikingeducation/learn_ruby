def translate(sentence)
	all_words = []
	vowels = ["a", "u", "i", "o", "e"]
	sentence.split(" ").each do |word|
	 	if vowels.include?(word[0])
	 		all_words.push(word << "ay")
	 	elsif word[0..1] == "qu"
	 		all_words.push(word[2..-1] << "quay")
	 	elsif word[1..2] == "qu"
	 		all_words.push(word[3..-1] << word[0] << "quay")
	 	elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
	 		all_words.push(word[3..-1] << word[0..2] << "ay")
	 	elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
	 		all_words.push(word[2..-1] << word[0..1] << "ay")
	 	elsif !vowels.include?(word[0]) 
	 		all_words.push(word[1..-1] << word[0] << "ay")
	 	end
	 end
	 return all_words.join(" ")
end