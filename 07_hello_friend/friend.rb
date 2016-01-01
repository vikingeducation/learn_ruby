class Friend


  def greeting(who=nil)
    if not who
      "Hello!"
    else
      "Hello, #{who}!"
    end
  end


end