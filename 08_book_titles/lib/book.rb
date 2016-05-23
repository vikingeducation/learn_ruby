class Book
  attr_accessor :title

  def title
    small_words = [:a, :the, :an, :between, :and, :to, :in, :of]

    title_words = @title.split(" ")

    title_words.map do |word|
     
      if !small_words.include?(word.to_sym)
        word[0] = word[0].upcase
      end
      
    end
    title_words[0][0] = title_words[0][0].upcase 
    title_words = title_words.join(" ")
  end

end