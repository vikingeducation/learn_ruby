class Friend
  def greeting(name="")
    if name == ""
      return "Hello!"
    else
      return "Hello, #{name}!"
    end
  end
end