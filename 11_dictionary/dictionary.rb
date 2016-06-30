class Dictionary
  attr_accessor :entries

  def initialize(entries={})
    @entries = entries
  end

  def add(entry)
    if entry.class == String
      @entries[entry] = nil
    else 
      entry.each do |key, value|
        @entries[key] = value
      end
    end
  end

  def keywords
    return @entries.keys.sort
  end

  def include?(key)
    return keywords.include?(key)
  end

  def find(key)
    result = {}
    keywords.each do |str|
      if str.include?(key)
        result[str] = @entries[str]
      end
    end
    return result
  end

  def printable
    temp = ""
    keywords.each do |key|
      temp = temp + "[#{key}] " + "\"" + @entries[key].to_s + "\"\n"
    end
    return temp[0..-2]
  end
end