class XmlDocument

  def initialize(indent = false)
    @indent = indent
    @indent_depth = 0
  end


  def method_missing(method, attributes = {})

    if block_given? && @indent
      string = String.new
      string += "\n" if @indent_depth > 0
      @indent_depth.times {string += "  "}
      string += "\<#{method}>"
      @indent_depth += 1
      string += "#{yield}\n"
      @indent_depth -= 1
      @indent_depth.times {string += "  "}
      string += "</#{method}>"
      string += "\n" if @indent_depth == 0
      return string

    elsif block_given?
      return "\<#{method}>#{yield}</#{method}>"

    elsif attributes.empty?
      return "\<#{method}\/\>"

    elsif @indent
      key = attributes.keys[0]
      value = attributes.values[0]
      string = String.new
      string += "\n" if @indent_depth > 0
      @indent_depth.times {string += "  "}
      string += "<#{method} #{key}='#{value}'/>"
      return string

    else
      key = attributes.keys[0]
      value = attributes.values[0]
      return "<#{method} #{key}='#{value}'/>"
    end
  end

end
