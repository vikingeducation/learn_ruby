class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    entry = {entry => nil} if entry.is_a?(String)
    @entries.merge!(entry)
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.has_key?(key)
  end

  def find(str)
    result = {}
    @entries.each {|key, value| result[key]=value if key.start_with?(str) }
    result
  end

  def printable
    string = ''
    @entries.sort.each do |key, value|
      string = string + %Q{[#{key}] "#{value}"\n}
    end
    string.chomp
  end

  


end

