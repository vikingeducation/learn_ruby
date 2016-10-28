class Dictionary

  def entries
    @entries
  end

  def initialize
    @entries = {}
  end

  def add(entry, value = nil)
    if entry.is_a?(Hash)
      entry.each {|key, value| @entries[key] = value}
    else
      @entries[entry] = value
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    @entries.key?(keyword)
  end

  def find(search)
    found = @entries.select {|key, value| key.start_with?(search)}
  end

  def printable
    output = @entries.sort.map {|key, value| "[#{key}] \"#{value}\""}
    output.join("\n")
  end

end