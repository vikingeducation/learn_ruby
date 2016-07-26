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

  def include?(keyword)
    @entries.key?(keyword)
  end

  def find(word)
    result = {}
    @entries.each do |key, value|
      if key[0...word.length] == word
        result[key] = value
      end
    end
    result
  end

  def printable
    dictionary = ""
    @entries.sort.each do |word, definition|
      dictionary << ("[#{word}] \"#{definition}\"\n")
    end
    dictionary.chomp
  end

end