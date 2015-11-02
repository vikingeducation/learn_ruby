class XmlDocument

  def initialize indent=false
    @indent = indent
    @levels = -1
  end

  def method_missing(sym, options={}, &block)
    @levels += 1
    attributes = ''
    options.each do |key, value|
      attributes << " #{key}='#{value}'"
    end

    if @indent
      if block_given?
        "#{' ' * (@levels)}<#{sym}#{attributes}>\n" +
        "#{' ' * (@levels)}#{yield}#{' ' * (@levels)}</#{sym}>\n"
      else
        "#{' ' * (@levels)}<#{sym}#{attributes}#{}/>\n"
      end
    else
      if block_given?
        "<#{sym}#{attributes}>#{yield}</#{sym}>"
      else
        "<#{sym}#{attributes}#{}/>"
      end
    end
  end

  def send tag_name
    "<#{tag_name}/>"
  end

end