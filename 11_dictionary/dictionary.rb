class Dictionary
  attr_accessor :entries

  def initialize(opts = {})
    @entries = opts
  end

  def add(entry)
    if entry.is_a?(String)
      @entries[entry] = nil
    else
      @entries.merge!(entry)
    end
  end

  def include?(keyword)
    keywords.include?(keyword)
  end

  def find(keyword)
    return @entries if @entries.empty?
    @entries.select { |word, definition| word.match(keyword)}
  end

  def printable
    printout = ''
    keywords.each_with_index do |key, i|
      printout << "[#{key}] \"#{@entries[key]}\""
      printout << "\n" if i < keywords.size-1
    end
    printout
  end

  def keywords
    @entries.keys.sort
  end

end
