class Book
  def initialize()
    @title
    @prepositions = ["about", "above", "across", "after", "against", "around", "at", "before", "behind", "below", "beneath", "beside", "besides", "between", "beyond", "by", "down", "during", "except", "for", "from", "in", "inside", "into", "like", "near", "of", "off", "on", "out", "outside", "over", "since", "through", "throughout", "till", "to", "toward", "under", "until", "up", "upon", "with", "without", "according to", "because of", "by way of", "in addition to", "in front of", "in place of", "in regard to", "in spite of", "instead of", "on account of", "out of"]
    @articles = ["a", "an", "the"]
    @conjunctions = ["for", "and", "nor", "but", "or", "yet", "so"]
  end

  def title
    words = @title.split(' ')
    words.each do |word|
      unless leave_alone?(words, word)
          word[0] = word[0].upcase
      end
    end
    words.join(' ')
  end

  def title=(title)
    @title = title
  end

  def leave_alone?(words, word)
    lower_case = false
    if (words.first == word)
      lower_case = false
    elsif (words.last == word)
      lower_case = false
    elsif @conjunctions.include?(word)
      lower_case = true
    elsif @prepositions.include?(word)
      lower_case = true
    elsif @articles.include?(word)
      lower_case = true
    end
    lower_case
  end
end