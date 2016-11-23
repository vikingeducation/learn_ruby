

class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(terms_and_definitions)
    if terms_and_definitions.class == Hash
      @entries.merge!(terms_and_definitions)
    else
      @entries[terms_and_definitions] = nil
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(keyword)
    return entries.keys.include?(keyword)
  end

  def find(regular_expression)
    matches = @entries.select { |keyword| keyword.to_s.include?(regular_expression) }
    return matches
  end

  def printable
    printable_string = ""
    @entries.sort.each do |keyword, definition|
      printable_string << "[#{keyword}] \"#{definition}\"\n"
    end
    return printable_string.chomp
  end

end
