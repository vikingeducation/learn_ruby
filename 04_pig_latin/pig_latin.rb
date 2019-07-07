#write your code here
def translate(sentence)
    vowels = ['a','e','i','o','u']
    words = sentence.split

    words.each do |word|
        #checks if the first letter is not a vowel
        if !vowels.include? word[0]
            letter_position = 0
            while letter_position < word.length do
                #If we hit a vowel, stop the loop
                if vowels.include? word[letter_position]
                    #Checks for the qu phoneme
                    if !(word[letter_position] == 'u' && word[letter_position-1] == 'q')
                        break
                    else
                        word << word[letter_position]
                        letter_position += 1
                    end
                else
                #If the letter is a consonant, add it to the end of the sentence
                    word << word[letter_position]
                    letter_position += 1
                end
            end
            while letter_position > 0 do
                puts letter_position
                word[letter_position-1] = ''
                letter_position -= 1
            end
        end
        #Adds ay to the end of every word
        word << 'ay'
    end
    words.join(" ")
end