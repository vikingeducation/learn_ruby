class Friend
  def greeting(name="")
    if name.length == 0
      "Hello!"
    else
      "Hello, #{name}!"
    end
  end
end
