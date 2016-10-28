def translate(input)
  words = input.split(" ")
  words.map! do |word|
    special_case = (/(qu)|(ch)/ =~ word)
    if special_case != nil && special_case < 2
      word.split("").rotate!(special_case + 2).join("") << "ay"
    else
      first_vowel = (/[aeiou]/ =~ word)
      word.split("").rotate!(first_vowel).join("") << "ay"
    end
  end 
  words.join(" ")
end