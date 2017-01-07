class Book
  @book = Book.new
  def title=string
    @title = string
  end

  def title
    $avoidables = ["the", "a", "an", "and", "in", "the", "of"]
    array = @title.split(" ")
    array.map!.with_index do |x, i|
      if i == 0
        x.capitalize
      elsif !$avoidables.include?(x)
        x.capitalize
      else
        x
      end
    end
    return array.join(" ")
  end

end
