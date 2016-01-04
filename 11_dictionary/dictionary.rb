class Dictionary
  attr_accessor :entries, :keywords

  def initialize
    @entries = {}
    @keywords = []
  end

  def keywords
    @keywords.sort!
  end

  def add(entry)
    if entry.is_a? String
      @entries[entry] = nil
      @keywords << entry
    else
      entry.each do |key, value|
        @entries[key] = value
        @keywords << key
      end
    end
  end

  def include?(entry)
    if @keywords.include?(entry)
      true
    else
      false
    end
  end

  def find(entry)
    search_results = {}
    @keywords.each do |word|
      if word =~ /\A#{entry}/
        search_results[word] = @entries[word]
      end
    end
    search_results
  end

  def printable
    print = ""
    @entries.sort.each do |key, value|
      print << "[#{key}] \"#{value}\"\n"
    end
    print.chomp
  end
end