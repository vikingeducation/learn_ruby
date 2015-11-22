class Dictionary
  def initialize
    @hash = {}
  end

  def entries
    @hash
  end

  def add(key_value)
    if key_value.is_a?(Hash)
      key_value.each do | key, value |
        @hash[key] = value
      end
    else
      @hash[key_value] = nil
    end
  end

  def keywords
    @hash.keys
  end

  def include?(key)
    @hash.has_key?(key)
  end

  def find(key)
    if @hash.empty?
      @hash
    elsif include?(key)
      puts "it does have that key"
    else
      puts "that key doesn't exist"
    end
  end

end

@d = Dictionary.new
@d.add('friend')
@d.add('great')

print @d.keywords
