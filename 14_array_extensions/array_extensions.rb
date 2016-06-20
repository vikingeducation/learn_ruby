class Array

  def sum
    inject(0, :+)
  end

  def square
    map{ |num| num ** 2 }
  end

  def square!
    map!{ |num| num ** 2 }
  end

  
end




   
