class Friend
  def greeting who=nil
      @greeting = "Hello #{(who ? ', ' + who : nil)}!"
  end
end