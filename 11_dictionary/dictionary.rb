require 'pry'
class Dictionary
  def initialize
    @d = {}
  end

  def entries
    @d
  end

  def add(entry)
    if entry.class != Hash
      @d.merge!(entry => nil)
    else
      @d.merge!(entry)
    end
  end

  def keywords
    @d.keys.sort
  end

  def include?(keyword)
    @d.keys.include?(keyword)
  end

  def find(keyword)
    op = @d.select { |k, v| /#{keyword}/.match(k) }
    op ? op : {}
  end

  def printable
    str = ""
    @d.keys.sort.each do |k|
      str += "[#{k}] \"#{@d[k]}\"\n"
    end
    str.chomp
  end
end
