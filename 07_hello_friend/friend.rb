class Friend
  def greeting name = nil
    name.nil? ? "Hello!" : "Hello, #{name}!"
  end
end
