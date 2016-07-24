class Dictionary
  def initialize
    @dic = {}
  end

  def entries
    @dic
  end

  def add entry
    if entry.is_a? String
      @dic[entry] = nil
    else
      @dic[entry.keys[0]] = entry.values[0]
    end
  end

  def include? str
    @dic.each do |key, value|
      return true if str == key
    end
    false
  end

  def keywords
    @dic.keys.sort
  end

  def prefix_match? prefix, key_object
    # binding.pry
    prefix_length = prefix.length
    prefix[0..(prefix_length - 1)] == key_object[0..(prefix_length - 1)]
  end

  def find object
    find_result = {}
    @dic.each do |k, v|
      find_result[k] = v if prefix_match? object, k
    end
    find_result
  end

  def printable
    # binding.pry
    result = ""
    @dic.keys.sort.each do |key|
      result << "[#{key}] \"#{@dic[key]}\"\n"
    end
    result.chomp
  end

end
