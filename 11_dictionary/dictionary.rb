class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end


  def add(entry)
    if entry.is_a?(Hash)
      @entries.merge!(entry)
    else
      @entries[entry] = nil
    end
  end


  def keywords
    @entries.keys.sort
  end


  def include?(entry)
    @entries.keys.include?(entry)
  end


  def find(text)
    @entries.select { |keys, values| keys.include?(text)}
  end


  def printable
    output = ""
    @entries.sort.each { |keys, values| output << "[#{keys}] \"#{values}\"\n"}
    output.chomp
  end



end