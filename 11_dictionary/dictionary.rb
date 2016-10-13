class Dictionary
  attr_accessor :entries

  def initialize
  	@entries = {}
  end

  def keywords
  	@entries.keys.sort
  end

  def add(opt = {})
  	if opt.class == Hash
  		opt.each { |key, value| @entries[key] = value}
  	else
  		@entries[opt] = nil
  	end
  end

  def include?(word)
  	if @entries.keys.include?(word)
  		return true
  	else
  		return false
  	end
  end

  def find(word)
  	desired = Dictionary.new
  	desired.add(@entries.select { |key, value| key.start_with?(word)})
  end

  def printable
  	# inspect method?
  	printed = ""
  	self.keywords.each do |keyword|
  		printed << %Q{[#{keyword}] "#{@entries[keyword]}"\n}
  	end
  	return printed.chomp
  end
end