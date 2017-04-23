class XmlDocument

  def initialize(indent = false)
    @indent = indent
  end


  def method_missing(method,arg={},*block)
    if @indect == true
    else
      if block_given?
        "<#{method}>#{yield}</#{method}>"
      elsif ! arg.empty?
        k = arg.keys
        v = arg.values
        "<#{method} #{k[0]}\='#{v[0]}'/>"
      else
        "<#{method}/>"
      end
    end
  end


end
