class Dictionary
  def initialize
    @d = {}
  end
  def entries
    @d
  end
  def add(entry)
    if entry.is_a?(Hash)
      @d.merge!(entry)
    elsif entry.is_a?(String)
      @d[entry] = nil
    end
  end
  def keywords
    @d.keys.sort!
  end
  def include?(entry)
    @d.keys.include?(entry)
  end
  def find(entry)
    results = {}
    @d.each { |key, value|
      if key.start_with?(entry)
        results[key] = value
      end
    }
    results
  end
  def printable
    output = @d.sort.map { |key, value|
      "[#{key}] \"#{value}\""
    }
    output.join "\n"
  end
end