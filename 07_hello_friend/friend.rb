class Friend
  def greeting(who="")
    return "Hello!" if !who[0]
    "Hello, #{who}!"
  end
end