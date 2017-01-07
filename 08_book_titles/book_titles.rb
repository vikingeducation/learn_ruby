class Book
  def title
    @title
  end

  def title=(title)
    small_words = %w{the are is the on of for and over in a an}
    @title = title
    @title = @title.split(" ")
    @title.each_with_index do |word, idx|
      titleize = Proc.new {word[0] = word[0].upcase}
      titleize.call if (small_words.count(word) == 0 && idx > 0) || idx == 0
    end
    @title = @title.join(" ")
  end

end
