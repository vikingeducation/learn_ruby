def translate(input)

alphabet = ("a".."z").to_a
vowels = ["a","e","i","o","u"]
consonants = alphabet - vowels
words = input.split(" ")



  words.map do |word|

    #word begins with vowel
    if vowels.include?(word[0])
      word << "ay"
    #word begins with 2 consonants
    elsif (consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])) || word[1..2].include?("qu")
      add = word[0..2] + "ay"
      word.delete!(word[0..2])
      word << add 
    elsif (consonants.include?(word[0]) && consonants.include?(word[1])) || word[0..1].include?("qu")
      add = word[0..1] + "ay"
      word.delete!(word[0..1])
      word << add   
    #word begins with 1 consonant
    elsif consonants.include?(word[0])
      add = word[0] + "ay"
      word.delete!(word[0])
      word << add
    end
  end

words = words.join" ".to_s
end

