class Book

attr_accessor :title

def title
  @title = @title.split(" ")
  articles = ["the","a","and","in","of","an"]
  @title.map do |word|
    word[0] = word[0].capitalize unless articles.include?(word)
  end
  @title[0] = @title[0].capitalize
  @title.join(" ")
end


end


