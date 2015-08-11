def translate(str)
    words = str.split
    
    words.map { |word|
        reverse_starting_consonants(word) + "ay"
    } * " "
end
            
            
def reverse_starting_consonants(word)
    consonants = []
    word_arr = word.chars #splitting the characters so we can easier manipulate the string
    
    until ['a','e','i','o','u'].include?(word_arr[0]) do
        #if word begins with qu, we will shift twice
        if((word_arr[0]+word_arr[1]) == "qu")
            consonants.push(word_arr.shift)
        end
        
        consonants.push(word_arr.shift)
    end
    
    # putting the consonants at the back of the word
    (word_arr + consonants).join
end
        
        