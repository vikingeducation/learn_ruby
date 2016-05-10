class Friend
  def initialize
  end

  def greeting input=nil
    input ? "Hello, #{input}!" : "Hello!"
  end
end
