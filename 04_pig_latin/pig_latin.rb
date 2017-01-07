def translate(word)
  words=word.downcase.split(" ")
  vowels=["a","e","i","o","u"]
  counter=0
  #go through each word in the words array
  while counter<words.length
    #find first letter of the word
    first_letter=words[counter][0]
    #if the first letter is a vowel, add "ay" to the end
    if vowels.include?(first_letter)
      words[counter]+="ay"
      #if first letter is a consonant, find the first vowel (except "u" after "q") and move everything before the vowel to the end
    else
      #start at 1 because we know the first letter is not a vowel
      letter_idx=1
      found=false
      until found
        this_letter=words[counter][letter_idx]
        if vowels.include?(this_letter)
          split_at = words[counter][letter_idx-1,2]=="qu" ? letter_idx+1 : letter_idx
          found=true
          words[counter]=words[counter][split_at,words[counter].length-split_at]+words[counter][0,split_at]+"ay"
        else
          letter_idx+=1
        end
      end
    end
  counter+=1
end
words.join(" ")
end