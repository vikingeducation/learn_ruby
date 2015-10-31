class Book
  @title = "title"
  def title=(title)
    @title = title.capitalize!
  end

  def title
    return @title
  end
end