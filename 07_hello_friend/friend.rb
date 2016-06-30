class Friend
  def greeting(who = nil)
    return "Hello" + (who ? ", #{who}!" : "!")
  end
end