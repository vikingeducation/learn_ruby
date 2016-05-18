
class XmlDocument

  def initialize(indents = false)
    @indents = indents
    @tags = 0
  end

  def send(tag_name)
    return "<#{tag_name}/>"
  end

  def create_tag(tag, attributes = {}, &block)
    tag_name = tag
    tag = "<#{tag}"
    indent = "  " * @tags
    @tags += 1
    if @indents == true
      tag = indent + tag
      attributes.each do |attribute, value|
        tag += " #{attribute.to_s}=\'#{value}\'"
      end
      if block_given?
        tag += ">\n#{yield()}#{indent}</#{tag_name}>\n"
      else
        tag += "/>\n"
      end
    else
      attributes.each do |attribute, value|
        tag += " #{attribute.to_s}=\'#{value}\'"
      end
      if block_given?
        tag += ">#{yield()}</#{tag_name}>"
      else
        tag += "/>"
      end
    end
    return tag
  end

  def hello(attributes = {}, &block)
    create_tag("hello", attributes, &block)
  end

  def goodbye(attributes = {}, &block)
    create_tag("goodbye", attributes, &block)
  end

  def come_back(attributes = {}, &block)
    create_tag("come_back", attributes, &block)
  end

  def ok_fine(attributes = {}, &block)
    create_tag("ok_fine", attributes, &block)
  end

end
