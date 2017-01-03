class Friend
  def greeting(name=nil)
    return "Hello, #{name}!" if name
    "Hello!"
  end
end
