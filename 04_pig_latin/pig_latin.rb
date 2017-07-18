#write your code here
def translate(sentence)
  
	# various lists defined
  	consonant_letters = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	word_list = sentence.split
	word_list_changed = []
	word_changed = ""

	# each loop start
	word_list.each do |word|


	  if word[0..1] == "qu"

		word_changed = word[2..word.length-1] + word[0..1] + "ay"
		word_list_changed.push(word_changed)

	  elsif  consonant_letters.include? word[0] and 
		  word[1..2] == "qu"

		word_changed = word[3..word.length-1] + word[0..2] + "ay"
		word_list_changed.push(word_changed)

	  elsif  consonant_letters.include? word[0] and 
		consonant_letters.include? word[1] and
		consonant_letters.include? word[2] 

		word_changed = word[3..word.length-1] + word[0..2] + "ay"
		word_list_changed.push(word_changed)

	  elsif ( consonant_letters.include? word[0] and
			 consonant_letters.include? word[1] )

		word_changed = word[2..word.length-1] + word[0..1] + "ay"
		word_list_changed.push(word_changed)

	  elsif consonant_letters.include? word[0]   
		word_changed = word[1..word.length-1] + word[0] + "ay" 
		word_list_changed.push(word_changed)

	  else
		word_changed += word + "ay" 
		word_list_changed.push(word_changed)
	  end

	end
	return word_list_changed.join(" ")
end
