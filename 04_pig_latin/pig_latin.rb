def vowel? letter
  ["a", "e", "i", "o", "u"].include? letter.downcase
end
def qu? word, letter
  (word.chars[letter].downcase == "q" && word.chars[letter+1].downcase == "u")
end
def translate sentence
  words = sentence.split(" ").map do |word|
    if vowel? word.chars.first then word+"ay"
    else
      letter = 0
      until vowel? word.chars[letter+1] do
        letter += 1
      end
      if qu? word, letter then letter += 1 end 
      word.chars[letter+1..-1].join+word.chars[0..letter].join+"ay"
    end
  end.join(" ")
end