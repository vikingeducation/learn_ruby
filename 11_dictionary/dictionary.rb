class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == Hash
      @entries.merge! entry
    else
      @entries[entry] = nil
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(keyword)
    keywords.include? keyword
  end

  def find(prefix)
    entries.select do |k,v|
      k[0..prefix.length-1] == prefix
    end
  end

  def printable
    printable_string = ""
    keywords.each do |keyword|
      printable_string += "[#{keyword}] \"#{entries[keyword]}\"\n"
    end
    printable_string.chomp
  end
end