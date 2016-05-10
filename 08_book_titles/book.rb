class Book
  attr_reader :title
  def initialize
  end

  def title= input
    little_words = %w[the a an and in of]
    words = input.capitalize.split(' ')
    @title = words.map do |word|
      little_words.include?(word) ? word : word.capitalize
    end.join(' ')
  end
end
