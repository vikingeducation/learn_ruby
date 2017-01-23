class Friend
  def greeting(person = nil)
    person ? "Hello, #{person}!" : "Hello!"
  end
end