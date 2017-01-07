class XmlDocument

  def initialize(indent = false)
    @indent = indent
  end

  def hello(key_value=nil)
    if @indent == false
      return "<hello>#{yield}</hello>" if block_given?
      message = nil
      if key_value == nil
        message = "<hello/>"
      else
        key_value.each do |key, value|
          message = "<hello name='#{value}'/>"
        end
      end
    else
      return "<hello>\n#{yield}</hello>\n" if block_given?
      message = nil
      if key_value == nil
        message = "<hello/>"
      else
        key_value.each do |key, value|
          message = "<hello name='#{value}'/>"
        end
      end
    end
    message
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end

  def goodbye
    message = nil
    if @indent == false
      return "<goodbye>#{yield}</goodbye>" if block_given?
      message = "<goodbye/>"
    else
      return "  <goodbye>\n#{yield}  </goodbye>\n" if block_given?
    end
    message
  end

  def come_back
    message = nil
    if @indent == false
      return "<come_back>#{yield}</come_back>" if block_given?
      message = "<come_back/>"
    else
      return "    <come_back>\n#{yield}    </come_back>\n" if block_given?
    end
    message
  end

  def ok_fine(key_value)
    message = nil
    if @indent == false
      key_value.each do |key, value|
        message = "<ok_fine #{key.to_s}='#{value}'/>"
      end
    else
      key_value.each do |key, value|
        message = "      <ok_fine #{key.to_s}='#{value}'/>\n"
      end
    end
    message
  end

end