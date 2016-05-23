def book(title)
  small_words = ["a", "the", "an", "between", "and"]

  title_words = tile.split(" ")

  title_words.map do |word|
    word = word.downcase
    if !small_words.include?(word)
      word[0] = word[0].upcase
    end
  end
  
end