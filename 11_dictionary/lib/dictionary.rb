class Dictionary
  attr_accessor :entries

  def initialize(entries={})
    @entries = entries
  end

  def add(entry={})
    if entry.is_a?(String)
      @entries[entry] = nil
    else
      
      @entries = @entries.merge(entry)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    keywords.each do |key_check|
      return true if key_check == key
    end
    false
  end

  def find(search_word)
    @entries.select { |key, value| key.start_with?(search_word) }
  end

  def printable
    output = ""
    @entries.sort.each do |key, value|
      output << "[#{key}] \"#{value}\"\n"
    end
    output.chomp
  end
end