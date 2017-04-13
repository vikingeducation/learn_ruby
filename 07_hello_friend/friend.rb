class Friend

  def greeting(friend_name="")
    if friend_name == ""
      "Hello!"
    else
      "Hello, #{friend_name}!"
    end
  end

end
