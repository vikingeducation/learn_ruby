class Dictionary

  # attr_accessor :hash

  def initialize
    @hash = {}
  end

  def entries
    @hash
  end

  def add(hash)
    if hash.is_a?(String)
      @hash[hash] = nil
    else
      @hash.merge!(hash)
    end
  end

  def keywords
    @hash.keys.sort
  end

  def include?(string)
    @hash.has_key?(string)
  end

  def find(string)
    return_hash ={}
    if @hash.empty?
      return_hash
    end

    @hash.each do |key, value|
      if key[0..1].to_s == string[0..1]

        return_hash.store(key, value)
      else
        return_hash
      end
    end
    return_hash
  end

  def printable
    string = ""
    @hash.sort.map do |key, value|
      string += %Q{[#{key}] "#{value}"\n}
    end
    string[0..-2]
  end


end









