class Book

  attr_accessor :title

  def initialize
    @title=""
  end

  def title=(str)
    
    @title=cap(str)
    #str.split(" ").each{ |word| word.capitalize}.join(" ")

  end

  def title
    @title
  end

  def cap(str)
    articles=["the","a","an","and","in","of"]
    arr=[]
    str.split(" ").map do |word|
      unless articles.any? { |art| word==art }
        arr<<word.capitalize
      else
        arr<<word
      end
    end

    arr[0][0]=arr[0][0].upcase
    arr.join(" ")

  end

end