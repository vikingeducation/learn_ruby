class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(opts)
    if opts.is_a? String
      @entries[opts] = nil
    else
      @entries[opts.keys[0]] = opts[opts.keys[0]]
    end
  end

  def keywords
    return @entries.keys.sort
  end

  # Can't just check if nil because default for non-defined words is nil.
  def include?(val)
    if @entries.keys.include? val
      true
    else
      false
    end
  end

  # We use a regex to find all entries that start with the search value.
  def find(val)

    # Go through all the entries, only keep the ones with keys that fit criteria.
    @entries.select{|key, value| key.to_s.match(/^#{val}/)}
  end

  # Prints the result according to the spec.
  def printable
    result = ""

    @entries.sort.each do |key, value|
      result += "[#{key}] "
      result += "\"#{value}\"\n"
    end

    # Hacky, but we need to remove the final newline to pass the spec.
    result = result[0..-2]

    return result
  end

end