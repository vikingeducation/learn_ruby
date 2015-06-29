def pig_latin(phrase)
    phrase = phrase.split(" ")
    vowels = ["a","e","i","o","u"]
    ans = []
    phrase.each do |word|
        if word[0..1] == "qu"
            word = word.chars.rotate(2).join
        end
        until vowels.include?(word[0])
           word = word.chars.rotate.join
        end
        ans << word + "ay"
    end
    
    ans.join(" ")
    
end