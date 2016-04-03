class Book
  attr_writer :title
  def title
    @title = @title.split
    @title[0].capitalize!
    @title.map! do |i|
    if(i == "the" || i == "and" || i == "a" || i == "an" || i == "and" || i == "in" || i == "of")
      i
    else
      i.capitalize
    end
  end
  @title.join(" ")
  end
end