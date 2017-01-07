class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == Hash
      @entries = @entries.merge(entry)
    else
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    @entries.key?(word)
  end

  def find(str)
    result = {}
    @entries.each do |word, definition|
      if word[0...str.length] == str
        result[word] = definition
      end
    end
    result
  end

  def printable
    string = ""
    @entries.sort.each do |word, definition|
      string << ("[#{word}] \"#{definition}\"\n")
    end
    return string.chomp
  end

end