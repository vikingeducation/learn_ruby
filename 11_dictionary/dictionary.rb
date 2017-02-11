class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(keyvals)
    if keyvals.is_a?(Hash)
      @entries = entries.merge(keyvals)
    else
      @entries = entries.merge({keyvals => nil})
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(k)
    entries.include?(k)
  end

  def find(s)
    entries.select{ |k, v| k.include?(s) }
  end

  def printable
    entries.sort.reduce("") do |acc, kv|
      k, v = kv
      s = %Q{[#{k}] "#{v}"}
      if acc.empty?
        s
      else
        acc + "\n" + s
      end
    end
  end

end
