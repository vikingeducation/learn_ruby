class Friend
  def greeting(addressed_to=false)
    if addressed_to
      "Hello, #{addressed_to}!"
    else
      "Hello!"
    end
  end
end