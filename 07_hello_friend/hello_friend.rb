class Friend
  def greeting(name = "")
    return "Hello!" if name.empty?

    "Hello #{name}!"
  end

end