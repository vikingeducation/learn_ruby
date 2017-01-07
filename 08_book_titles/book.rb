class Book
  attr_reader :title

def initialize
  @exceptions=["the","a","an","and","in","of"]
end

def title=(title)
title_words=title.split(" ").map{|word|word.downcase}
idx=0
  while idx<title_words.length
    if idx==0||!@exceptions.include?(title_words[idx])
      title_words[idx].capitalize!
    end
    idx+=1
  end
  @title=title_words.join(" ")
end

end
