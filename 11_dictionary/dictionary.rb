class Dictionary
    
  def initialize
    @entries = {}
  end
  
  def entries
    @entries
  end
  
  def add key_value
    if key_value.is_a? String
      @entries[key_value] = nil
    else
      @key = key_value.keys[0]
      @value = key_value.values[0]
      
      @entries[@key] = @value
    end
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include? word
    keywords.include?(word)
  end
  
  def find prefix
    matches = {}
    
    keywords.each do |word|
      if word.scan(/^#{prefix}/).length > 0
        matches[word] = entries[word]
        # matches.merge(@)  
      end
    end
    matches
  end
  
  def printable
    output = []
    keywords.each do |keyword|
      output << "[#{keyword}] \"#{entries[keyword]}\""
    end
    output.join("\n")
  end
  
end

