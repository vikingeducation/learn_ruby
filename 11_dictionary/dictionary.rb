class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    @entries[entry] = nil if entry.is_a?(String)

    if entry.is_a?(Hash)
      entry.each_key { |key| @entries[key.to_s] = entry[key].to_s }
    end
  end

  def include?(keyword)
    @entries.each_key do |entry_key|
      return true if entry_key == keyword
    end

    return false
  end

  def find(keyword)
    entry = {}

    @entries.each_key do |key|
      entry[key] = @entries[key] if key.include?(keyword)
    end

    return entry
  end

  def keywords
    keywords = @entries.keys.to_a
    keywords.sort
  end

  def printable
    printable_text = []

    keywords.each do |key|
      printable_text.push("[#{key}] \"#{@entries[key]}\"")
    end

    return printable_text.join("\n")
  end

end