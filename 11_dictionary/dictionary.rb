class Dictionary
  def initialize
    @dictionary = {}
  end

  def entries
    @dictionary
  end

  def keywords
    @dictionary.keys.sort!
  end
  
  def add(entries)
    if entries.is_a?(String)
      @dictionary[entries] = nil
    elsif entries.is_a?(Hash)
      @dictionary.merge!(entries)
    end
  end

  def include?(key)
    @dictionary.include?(key)
  end

  def find(search_string)
    matched = {}
    @dictionary.select do |key, value|
      if key.match(search_string) != nil
        matched[key] = value
      end
    end
    matched
  end

  def printable
    result = %Q()
    @dictionary.sort.to_h.each do |key, value|
      result << %Q([#{key}] "#{value}"\n) 
    end
    result.rstrip!
  end

end
