class Friend
  def greeting name=''
    "Hello#{', ' + name if name != ''}!"
  end
end