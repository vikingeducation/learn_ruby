class Friend

  def greeting(name=nil)
    if name == nil
      return "Hello!"
    else
      return "Hello, #{name}!"
    end
  end

end