class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add entry
    if entry.is_a? Hash
      entry.each {|word, definition| @entries[word] = definition}
    else
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include? item
    @entries.include? item
  end

  def find word
    @entries.keep_if { |key, value| key[0, word.length] == word}
  end

  def printable
    output = []
    @entries.keys.sort.each { |key| output << "[#{key}] \"#{@entries[key]}\""}
    output.join("\n")
  end
end