class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == Hash
      @entries = @entries.merge(entry)
    else
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    @entries.has_key?(keyword)
  end

  def find(word)
    matches = {}
    @entries.each_key do |key|
      matches[key] = @entries[key] if key.match(/^#{word}/)
    end
    matches
  end

  def printable
    output = ""
    self.keywords.each do |key|
      output += "[#{key}] \"#{@entries[key]}\"\n"
    end
    output.chomp
  end
end