class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(listing)
    if listing.is_a?(String)
      @entries[listing] = nil
    else
      listing.each do |key, value|
        @entries[key] = value
      end
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(listing)
    @entries.include?(listing)
  end

  def find(input)
    matches = {}
    @entries.each do |key, value|
      if key[0..input.length-1] == input
        matches[key] = value
      end
    end

    matches
  end

  def printable
    print = []

    @entries.sort.map do |key, value|
      print << "[#{key}] \"#{value}\""
    end

    print.join("\n")
  end

end