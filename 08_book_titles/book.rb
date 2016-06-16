class Book

  attr_accessor :title

  def title=(title)
    articles = %w{a an the}
    conjunctions = %w{and}
    prepositions = %w{in on of off over}

    words = title.split.each_with_index.map do |word, index|
      if index == 0 # the first word
        word.capitalize
      else # not the first word
        if articles.include?(word) ||
            conjunctions.include?(word) ||
            prepositions.include?(word)
          word
        else
          word.capitalize
        end
      end
    end
    @title = words.join(" ")
    @title
  end
end

