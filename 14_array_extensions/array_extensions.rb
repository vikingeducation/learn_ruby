class Array
    
  def sum
    self.reduce(0) { |current, after| current + after } 
  end
  
  def square
    self.map { |number| number ** 2 } 
  end
  
  def square!
    self.map! { |number| number ** 2 } 
  end  
  
  
end#class end