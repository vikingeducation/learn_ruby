def translate(s)
  vowels = "aeiou".split("")
  split = s.split(" ")
  split.reduce([]) do |acc, word|
    # begins with vowel
    if vowels.include?(word[0].downcase)
      word = word + "ay"
      # with 3 consonants
    elsif word[0..2].split("").all?{ |char| not(vowels.include?(char)) } ||
          (not(vowels.include?(word[0])) && word[1..2] == "qu")
      word = word[3..-1] + word[0..2] + "ay"
      # with 2 consonants
    elsif word[0..1].split("").all?{ |char| not(vowels.include?(char)) } ||
          word[0..1].downcase == "qu"
      word = word[2..-1] + word[0..1] + "ay"
      # with 1 consonant
    else
      word = word[1..-1] + word[0] + "ay"
    end
    acc.push(word)
  end.join(" ")
end

translate("the quick brown fox")
