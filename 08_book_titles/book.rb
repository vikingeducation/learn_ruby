class Book
  def title=(title)
    # binding.pry
    format_title = []
    title.split(" ").each_with_index do |word, index|
      if (is_exception? word) && (index != 0)
        format_title << word
      else
        format_title << (cap_first_letter word)
      end
    end
    @title = format_title.join(" ")
  end

  def title
    @title
  end

  def cap_first_letter word
    # binding.pry
    word.split("").first.upcase + word[1..-1]
  end

  def is_exception? word
    # binding.pry
    ['an', 'the', 'a', 'of', 'or', 'and', 'in'].include? word
  end
end
