class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.is_a?(Hash)
      entry.each do |word, definition|
        @entries[word] = definition
      end
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

  def find(string)
    results = {}
    @entries.each do |word, definition|
      if word[0...string.length] == string
        results[word] = definition
      end
    end
    results
  end

  def printable
    @entries.map do |entry|
      %Q{[#{entry.first}] "#{entry.last}"}
    end.sort.join("\n")
  end

end
