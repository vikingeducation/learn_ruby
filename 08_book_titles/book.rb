class Book
	attr_accessor :title

  def title=(title)
    @title = title
    mid_words = ["a", "an", "the", "in", "at", "on", "of", "and"]
    arr = []

    @title = @title.split(" ").each_with_index do |word, index|
      if index == 0
        arr << word.capitalize!
      elsif mid_words.include? word
        arr << word
      else
        arr << word.capitalize!
      end
    end

    @title = @title.join(" ")
    @title
  end
end
