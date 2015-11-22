class Dictionary
  def initialize
    @hash = {}
  end

  def entries
    @hash ||= {}
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
    @hash.keys.sort
  end

  def include?(key)
    @hash.has_key?(key)
  end

  def find partial_word
    result = {}
    entries.each_pair do |key, definition|
      if key =~ /^#{partial_word}/
        result[key] = definition
      end
    end
    result
  end

  def printable
    message = ""
    keywords.each_with_index do |key, index|
      if index != keywords.size - 1
        message += "[#{key}] \"#{@hash[key]}\"\n"
      else
        message += "[#{key}] \"#{@hash[key]}\""
      end
    end
    message
  end

end

@d = Dictionary.new
@d.add('friend')
@d.add('great')

print @d.keywords
