class Dictionary

  def initialize(args={})
    @entries = args
  end

  def entries
    @entries
  end

  def add(key, value = nil)

    key.is_a?(Hash) ? new_entry = key : new_entry = { key => value }

    @entries.merge!(new_entry)

  end

  def keys
    @entries.keys.sort
  end

  def include?(input)

    exists = @entries.include?(input)

  end

  def find(input)

    # if @entries.include?(input)
    return @entries.select do |k, v|
      k.to_s.start_with?(input)
    end
    # else
    #   return {}
    # end



  end

  def printable
    a = @entries.map do |k, v|
      %Q([#{k}] "#{v}")
    end

    a.sort.join("\n")
  end


end


d = Dictionary.new
#d.entries
#d.add({'fish' => 'aquatic animal'})
#d.add('dog')
p d.entries
#p d.include?('fi')
p d.find('fi')