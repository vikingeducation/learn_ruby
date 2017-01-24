class Dictionary
  attr_accessor :entries, :keywords

  def initialize
    @entries = {}
    @keywords = []
  end

  def add(items = {})
    if items.is_a?(String)
      @keywords.push(items)
      @entries[items] = nil
    else
      items.each do |key, value|
        @entries[key] = value
        @keywords.push(key)
      end
    end

    @keywords.sort!
  end

  def include?(keyword)
    @keywords.include?(keyword)
  end 

  def find(word)
    output = {}
    @keywords.each do |keyword|
    
      if keyword.start_with?(word)
        output[keyword] = @entries[keyword]
      end
    end
    
    output  
  end

  def printable
    output = ""
    @keywords.each do |keyword|
      output += "[#{keyword}] \"#{@entries[keyword]}\"\n"
    end

    output.chomp
  end
end
