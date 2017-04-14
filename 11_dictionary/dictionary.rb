class Dictionary
@entries
  def initialize
    @entries  = {}
  end

  def entries
    @entries
  end

  def add(entry)
    entry.class == String ? entry = { entry => nil} : nil
    @entries.merge!(entry)
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def find(prefix)
    l = prefix.length - 1
    answers = {}
    keys = @entries.keys
    keys.each { |x| x[0..l] == prefix ? answers.merge!(x => @entries[x]) : nil }
    answers
  end

  def printable
    indexes = self.keywords
    output = ""
    indexes.each { |index| output += "[#{index}] \"#{@entries[index]}\"\n"}
    output[0..-2]
  end

end
