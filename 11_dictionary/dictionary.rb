class Dictionary
  attr_reader :entries  

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.is_a?(String)
      @entries[entry]=nil
    else
      entry.each do |key, value| 
        @entries[key] = value
      end
    end
  end

  def include?(check)
    @entries.include?(check)
  end

  def keywords
    @entries.keys.sort
  end

  def find(entry_to_find)
    result = {}
    @entries.each do |key,value|
      if key.include?(entry_to_find)
        result[key] = value
      end
    end
    result
  end

  def printable
    @entries.sort.map {|key, value| "[#{key}] \"#{value}\""}.join("\n")
  end
end