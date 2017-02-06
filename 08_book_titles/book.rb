class Book
  def initialize
    @title = ""
  end

  def title
    @title
  end

  def title=(new_title)
    @title = titleize(new_title)
  end

  def titleize(phrase)
    word = ""
    words = []

    phrase.length.times do |i|
      if phrase[i] == " "
        words.push(word.downcase)
        word = ""
      else i == phrase.length - 1
      word += phrase[i]
      end
      words.push(word.downcase) if i == phrase.length - 1
    end

    words.each_with_index do |word, i|
      words[i][0] = word[0].upcase unless lowercase_word?(word)
      words[i][0] = word[0].upcase if i == 0
    end

    words = words.join(" ")
  end

  def lowercase_word?(word)
    lowercase_words = ["the", "and", "over", "under", "of", "in", "a", "an"]
    lowercase_words.each do |lowercase_word|
      return true if word.downcase == lowercase_word
    end

    return false
  end
end