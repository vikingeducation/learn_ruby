 class Dictionary
  
  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(key_value)
    key_value = {key_value => nil} if key_value.class == String  
    @entries.merge!(key_value)
  end

  def keywords
    @entries.keys
  end

  def include?(keyword)
    # binding.pry
    @entries.keys.include?(keyword)
  end

  def find(word)
    if @entries == {}
      return {}
    else
      @entries.each do |key, value|
        if word == key
          return "Matched!"
        else
          return {}
        end
      end
    end
    
    binding.pry
  end

end