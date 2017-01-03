class Book
  def initialize(title = nil)
    @title = title
    @exclusion_words = %w(the a an and in of)
  end

  def title
    capitalize_each(@title)
  end

  def title=(title)
    capitalize_each(@title = title)
  end

  def capitalize_each(title)
    capitalized_title = title.split.each_with_index.map do |v, i|
      if i == 0 || !@exclusion_words.include?(v)
        v.capitalize
      else
        v
      end
    end
    capitalized_title.join(' ')
  end
end
