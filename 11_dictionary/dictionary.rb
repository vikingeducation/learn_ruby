class Dictionary
  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add  params
    if String === params
      @entries[params] = nil
    else
      params.map do |key, value|
        @entries[key] = value
      end
    end
  end

  def keywords
    @entries.map {|key, value| key}.sort
  end

  def include?(item)
    @entries.any? {|key, value| key == item}
  end

  def find(item)
    @entries.select {|key, value| item == key[0...item.length]}
  end

  def printable
    @entries.sort.map do |key, value|
      %Q{[#{key}] "#{value}"}
    end.join("\n")
  end
end
