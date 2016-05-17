class Friend
  def greeting(who=nil)
    if who
      return "Hello, #{who}!"
    else
      return "Hello!"
    end
  end
end