class Book
  @@little = ["the", "a", "an", "and", "in", "of"]
  def title=(title)
    @title=title
  end
  def title
    @title.split(" ").each_with_index.map {|w, i| \
      (i!=0 && @@little.include?(w)) ? w : w.capitalize}\
      .join(" ")
  end
end