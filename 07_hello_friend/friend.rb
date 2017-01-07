class Friend

  def greeting(some_one = nil)
    some_one ? "Hello, #{some_one}!" : "Hello!"
  end
end