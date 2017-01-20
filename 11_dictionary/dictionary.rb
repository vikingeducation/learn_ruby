class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(value)
    if value.is_a?(Hash)
      value.each do |word, definition|
        @entries[word] = definition
      end
    elsif value.is_a?(String)
      @entries[value] = nil
    end
  end

  def include?(word)
    @entries.key?(word)
  end

  def find(prefix)
    result = {}
    @entries.each do |word, definition|
      if word =~ /^#{Regexp.quote(prefix)}/
        result[word] = definition
      end
    end
    result
  end

  def keywords
    @entries.keys.sort
  end

  def printable
    output = ""
    @entries.keys.sort.each_with_index do |word, index|
      output += %Q{[#{word}] "#{@entries[word]}"}
      output += "\n" if index < @entries.length - 1
    end
    output
  end
end
