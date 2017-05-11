class XmlDocument

  def initialize(indent = false)
    @indent = indent
  end

  def block_depth=(value)
    Thread.current[:block_depth] = value
  end

  def block_depth
    Thread.current[:block_depth] || 0
  end

  def track_block_depth(&block)
    self.block_depth += 1
    yield
    ensure
      self.block_depth -= 1
  end

  def method_missing(method,arg={},*block)
    if block_given?
      if @indent == true
        indent_tags(method,arg={},block)
      else
        "<#{method}>#{yield}</#{method}>"
      end
    elsif ! arg.empty?
      k = arg.keys
      v = arg.values
      "<#{method} #{k[0]}\='#{v[0]}'/>"
    else
      "<#{method}/>"
    end
  end


  def indent_tags(method,arg={},*block)
    # level determines how much of an indent
    # need to check and keep track of level of nest
    indent = "  "
    new_string = ""
    track_block_depth do
      new_string << "#{indent} * #{self.block_depth}" << "<#{method}>\n" << "#{indent} * #{yield.block_depth}" << "#{yield}\n" << "#{indent} * #{self.block_depth}" << "</#{method}>\n"
    end
    new_string
    # opening tags indent
    # find way to distinguish between opening and closing tags
    # closing tag back out
    # new line after each tag
  end


end # end of class
