class XmlDocument
  def initialize(indent = false)
    @indent = indent
  end

  def hello(tags = {})
    hello = "hello"
    tags.each do |key, value|
      hello << " #{key.to_s}='#{value}'"
    end
    if block_given?
      hello << ">"
      hello << yield
      "<#{hello}</hello>"
    else
    "<#{hello}/>"
    end
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end

  def goodbye
    send("goodbye")
  end

  def come_back
    send("come_back")
  end

  def ok_fine(tags)
    text = nil
    if @indent == false
      tags.each do |key, value|
        text << "<ok_fine #{key.to_s}='#{value}'" 
      end
    else
      tags.each do |key, value|
        text << "  <ok_fine #{key.to_s}='#{value}'\n" 
      end
    end
  end
end
