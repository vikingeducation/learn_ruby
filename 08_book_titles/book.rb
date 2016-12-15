class Book
  attr_accessor :title

  def title
    non_caps = ['and', 'in', 'of', 'the', 'a', 'an']
    @title = @title.split(' ').each_with_index do |word, i|
      word.capitalize! unless non_caps.include?(word) && i != 0
      word
    end
    @title.join(' ')
  end

end
