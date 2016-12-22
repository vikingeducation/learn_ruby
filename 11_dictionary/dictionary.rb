class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.is_a?(String)
      @entries[entry] = nil
    else
      @entries[entry.keys[0]] = entry.values[0]
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    keywords.include?(keyword)
  end
 
  def find(keyword)
    found = {}
    @entries.each do |k, v|
      if k.include?(keyword)
        found[k] = v
      end
    end
    found
  end

  def printable
    output = ""
    @entries.sort.each do |k, v|
      output += "[#{k}] \"#{v}\"\n"
    end
    output.chomp
  end
end