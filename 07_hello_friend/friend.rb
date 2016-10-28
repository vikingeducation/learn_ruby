class Friend

  def greeting(who = nil)
    if who != nil
      "Hello, #{who}!"
    else
      "Hello!"
    end
  end

end