class Dictionary
  attr_reader :entries
  def initialize
    @entries = {}
  end

  def add entry
    entry.class == String ? @entries[entry] = nil : @entries.merge!(entry)
  end

  def keywords
    @entries.keys.sort
  end

  def include? keyword
    keywords.include?(keyword)
  end

  def find string
    @entries.keep_if{ |key,value| key[0..string.length-1] == string }
  end

  def printable
    return_string = ""
    @entries.sort.each{ |key,value| return_string+= "[#{key}] \"#{value}\"\n" }
    return_string.chomp
  end
end
