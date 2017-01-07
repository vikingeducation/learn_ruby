class Dictionary
  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    case entry
    when Hash
      @entries.update(entry)
    when String
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(entry)
    @entries.include?(entry)
  end

  def find(entry)
    results = {}
    @entries.each do |key, value|
      if key.start_with?(entry)
        results[key] = value
      end
    end
    results
  end

  def printable
    output = keywords.map do |item|
      "[#{item}] \"#{@entries[item]}\""
    end
    output.join("\n")
  end
end

