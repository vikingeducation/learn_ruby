class Friend
  def greeting(name = nil)
    return "Hello!" if name.nil?
    "Hello, #{name}!"
  end
end
