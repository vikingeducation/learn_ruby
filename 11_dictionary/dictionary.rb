class Dictionary

  def initialize
    @d = {}
  end

  def entries
    @d
  end

  def keywords
    @d.keys.sort
  end

  def add(options={})
    if options.class == Hash
      @d.merge!(options)
    elsif options.class == String
      @d[options]=nil
    end
  end

  def include?(a)
    @d.has_key?(a)
  end

  def find(a)
    h = {}
    if @d.has_key?(a)
      h[a]=@d[a]
      return h
    else
      @d.each_key do |x|
        h[x]=@d[x] if x.include?(a)
      end
      return h
    end
  end

  def printable
    s = ""
    self.keywords.each do |y|
    s +=  "[#{y}] \"#{@d[y]}\"\n"
    end
    s[0..-2]
  end

end
