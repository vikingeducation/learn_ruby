class Friend

  def greeting(name='')
    name =='' ? "Hello!" : "Hello, #{name}!"
    
  end

end

puts Friend.new.greeting('bob')