class Friend
  def greeting(someone = false)
    someone ? "Hello, #{someone}!" : "Hello!"
  end
end