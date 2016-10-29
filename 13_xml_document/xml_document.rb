class XmlDocument

  attr_accessor :beautify, :nested_level
  def initialize(beautify= false)
    @beautify = beautify
    @nested_level = 0
  end
  def indent
    (beautify ? ("  " * nested_level) : "")
  end

  def method_missing(tag_name, *args, &block)
    attributes = args[0] || false
    nl = (beautify ? "\n" : "" )
    tag = ""
    tag << "<#{tag_name}"
    attributes.each {|name, value| tag << " #{name}='#{value}'" } if attributes
    if block_given?
      tag << ">" + nl
      @nested_level += 1
      tag << indent + yield
      @nested_level -= 1
      tag << indent + "</#{tag_name}>" + nl
    else
      tag << "/>" + nl
    end
    tag
  end

end

