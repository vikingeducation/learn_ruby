class XmlDocument

  def hello(key_value=nil)
    return "<hello>#{yield}</hello>" if block_given?
    message = nil
    if key_value == nil
      message = "<hello/>"
    else
      key_value.each do |key, value|
        message = "<hello name='#{value}'/>"
      end
    end
    message
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end

  def goodbye
    "<goodbye/>"
  end

  def come_back
  end

  def ok_fine(key_value)
  end

end