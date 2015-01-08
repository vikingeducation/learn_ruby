class Friend
  def greeting(person="nil")
    if person == "nil"
      "Hello!"
    else
      "Hello, #{person}!"
    end
  end
end