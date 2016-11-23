
class Book

  attr_reader :title

  def initialize
    @title = ""
  end

  def title=(title)
    substrings = title.split
    titleized_substrings = []
    not_capitalized = ["a", "an", "and", "the", "of", "in"]
    substrings.each_with_index do |word, index|
      if index == 0
        titleized_substrings << word.capitalize
      elsif not_capitalized.include?(word)
        titleized_substrings << word
      else
        titleized_substrings << word.capitalize
      end
    end
    @title = titleized_substrings.join(" ")
  end

end