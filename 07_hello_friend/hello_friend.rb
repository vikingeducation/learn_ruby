class Friend
  def greeting(target="")
    hello = "Hello"
    hello = target == "" ? hello.+("!") : [hello, ", ", target, "!"].join("")
  end
end
