class Dictionary
  def initialize(entries={})
    @entries = entries
  end

  def entries
    @entries
  end

  def add(input)
    input = input.is_a?(Hash) ? input : {input => nil}
    @entries.update(input)
  end

  def keywords
    @entries.keys.sort{|key1, key2| key1[0] <=> key2[0]}
  end

  def include?(keyword)
    @entries.keys.any?{|key| key == keyword}
  end

  #Interpolate Regexp.escape(keyword) to match a string as a regular expression.
  def find(keyword)
    @entries.select{|key, value| key =~ /#{Regexp.escape(keyword)}/}
  end

  def printable
    printable = ""
    keywords = self.keywords
    keywords.each{|keyword| printable << %Q{[#{keyword}] \"#{@entries[keyword]}\"\n}}
    @entries = printable.chomp
  end
end
