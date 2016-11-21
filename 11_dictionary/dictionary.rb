class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.is_a?(Hash)
      term = entry.keys[0]
      definition = entry[term]
      @entries[term] = definition
    else
      @entries[entry] = nil
    end
  end

  def sort_entries
    @entries = @entries.sort_by { |term, definition| term }.to_h
  end

  def keywords
    sort_entries
    @entries.keys
  end

  def include?(term)
    @entries.key?(term)
  end

  def find(string)
    @entries.select { |term| term.include?(string) }
  end

  def printable
    sort_entries
    output = ""
    @entries.each do |term, definition|
      output << "[#{term}] \"#{definition}\"\n"
    end
    output.chomp
  end
end
