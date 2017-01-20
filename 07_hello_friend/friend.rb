class Friend
  def greeting(name = nil)
    message = "Hello!"
    if name
      message = "Hello, #{name}!"
    end
    message
  end
end