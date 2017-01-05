class Dictionary
  def initialize
    @entries = {}
  end
  def entries
    @entries
  end
  def add(entry)
    return @entries.merge!(entry) if entry.is_a?(Hash)
    @entries[entry] = nil
  end
  def keywords
    @entries.keys.sort
  end
  def include?(value)
    keywords.include?(value)
  end
  def find(word)
    results = {}
    @entries.each do |key, value|
      results[key] = value if key.match(/#{word}/)
    end
    results
  end
  def printable
    s = ''
    keywords.each do |key|
      s += "[#{key}] \"#{@entries[key]}\""
      s += "\n" if keywords.index(key) != keywords.length - 1
    end
    s
  end
end