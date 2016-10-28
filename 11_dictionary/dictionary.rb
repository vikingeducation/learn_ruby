class Dictionary
  def initialize
    @dict = {}
    @keywords = []
  end
  def entries
    @dict
  end
  def add(pair)
    if pair.class == Hash
      @dict.merge!(pair)
      @keywords.push(pair.keys[0])
    elsif
      @dict.merge!(pair => nil)
      @keywords.push(pair)
    end
  end
  def keywords
    @keywords.sort
  end
  def include?(query)
    @keywords.include?(query)
  end
  def find(query)
    @dict.select { |key, value| key.start_with? query}
  end
  def printable
    @keywords.sort!
    output = ""
    @keywords.each do |keyword|
      output += "[#{keyword}] \"#{@dict[keyword]}\"\n"
    end
    output = output.slice(0, output.length-1) # remove trailing \n
  end
end

# ""
