class Book
  attr_reader :title 

  def title=(title)
    @title = titleize(title)
  end

  private

  def titleize(title)
  exclusions = %w(a an the of over and in to for under)
  new_title = []
  title_words = title.split
  new_title << title_words[0].capitalize
  title_words[1..-1].each do |word|
    if exclusions.include?(word)
      new_title << word
    else
      new_title << word.capitalize
    end
  end

  new_title.join(" ")

  end
end
