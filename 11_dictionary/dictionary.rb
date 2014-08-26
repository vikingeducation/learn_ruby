class Dictionary

  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.is_a? Hash
      @entries.merge!(entry)
    elsif entry.is_a? String
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    keywords.include?(word)
  end

  def find(prefix)
    @entries.select {|key, value| key.start_with?(prefix)}
  end

  def printable
    printable_string = ""
    @entries.sort.each do |key, value|
      printable_string += "[#{key}] \"#{value}\"\n"
    end
    printable_string.chomp
  end

end
