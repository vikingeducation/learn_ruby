class Dictionary
  attr_accessor :entries

  def initialize()
    @entries = {}
  end

  def keywords
    @entries.keys.sort
  end

  def add(word_definition)
    if word_definition.is_a?(Hash)
      @entries.merge!(word_definition)
    else
      @entries[word_definition] = nil
    end
    @entries
  end

  def include?(word)
    keywords.each do |keyword|
      if word == keyword
        return true
      end
    end
    false
  end

  def find(word)
    found_words = {}
      @entries.each do |keyword, definition|
        if keyword.index(word) == 0
          found_words.merge!(keyword => definition)
        end
      end
    found_words
  end

  def printable
    word_string = ""
    @entries.sort.to_h.each_with_index do |(keyword, definition), index|
      unless index == @entries.length - 1
        word_string << "[#{keyword}] \"#{definition}\"\n"
      else
        word_string << "[#{keyword}] \"#{definition}\""
      end
    end
    word_string
  end

end