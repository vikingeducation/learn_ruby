class Book
  attr_accessor :title

  def title
    fixed = []
    stopwords = %w{the a an by on for of are with over but and to the my has some in is}
    @title = @title.capitalize.scan(/\w+/)
    @title.each do |word| 
      if stopwords.include?(word)
        fixed << word
      else
        fixed << word.capitalize 
      end
    end
    @title = fixed.join(' ')
    end
end
