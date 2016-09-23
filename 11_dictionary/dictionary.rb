class Dictionary 
  def initialize(dict = {})
    @dict = dict
  end

  def entries()
    return @dict
  end

  def add(command)
    if command.kind_of?(Hash)  == true
      @dict = Hash[command]
    else
      @dict = Hash[command => nil]

    end
  end

  def keywords()
    return @dict.keys
  end

  def include?(input)
    return @dict.key?(input)
  end

  def find(input)
    @dict.each do
      found = @dict.select { |key, value| key.to_s.match(/#{input}/) }
      return found
    end
  end
end