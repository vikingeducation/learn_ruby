def translate(sentance)
  vowels = ['A', 'E', 'I', 'O']
  sentance.split(" ").map do |word|
    index = word.split("").index{|char| vowels.include?(char.upcase) }
    if index == 0
      word + "ay"
    else
      word[index..-1] + word[0..index - 1] + "ay"
    end
  end.join(" ")

end
