class XmlDocument

  def initialize(indent = false)
    @indent = indent
  end

  def hello(arg=nil)
    if @indent == false
      if block_given?
        return "<hello>#{yield}</hello>"
      else
        output = nil
      end
      if arg == nil
        output = "<hello/>"
      else
        arg.each do |k, v|
          output = "<hello name='#{v}'/>"
        end
      end
    else
      if block_given?
        return "<hello>\n#{yield}</hello>\n"
      else
      output = nil
    end
      if arg == nil
        output = "<hello/>"
      else
        arg.each do |k, v|
          output = "<hello name='#{v}'/>"
        end
      end
    end
    output
  end

  def send(tag)
    "<#{tag}/>"
  end

  def goodbye
    output = nil
    if @indent == false
      
      if block_given?
        return "<goodbye>#{yield}</goodbye>"
      else
        output = "<goodbye/>"
      end
    else 
      if block_given?
        return "  <goodbye>\n#{yield}  </goodbye>\n"
      end
    end
    output
  end

  def come_back
    output = nil
    if @indent == false  
      if block_given?
        return "<come_back>#{yield}</come_back>"
      else
      output = "<come_back/>"
      end
    else 
      if block_given?
        return "    <come_back>\n#{yield}    </come_back>\n"
      end
    end
    output
  end

  def ok_fine(arg)
    output = nil
    if @indent == false
      arg.each do |k, v|
        output = "<ok_fine #{k.to_s}='#{v}'/>"
      end
    else
      arg.each do |k, v|
        output = "      <ok_fine #{k.to_s}='#{v}'/>\n"
      end
    end
    output
  end

end