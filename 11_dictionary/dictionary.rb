class Dictionary

  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add items
    if items.is_a?(Hash)
      items.each {|key, definition| @entries[key] = definition}
    else
      @entries[items] = nil
    end
    @entries = Hash[@entries.sort_by {|key, definition| key}]
  end

  def find partial
    @entries.select {|key, definition| key.include? partial}
  end

  def include? key
    @entries.has_key? key
  end

  def keywords
    @entries.keys
  end

  def printable
    output = ""
    @entries.each do |key, definition|
      output += "[#{key}] \"#{definition}\"\n"
    end
    output.chomp
  end

end