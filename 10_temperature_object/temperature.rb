class Temperature
  attr_accessor :f,:c
  
  def initialize(temp = {})
    self.f = temp[:f] 
    self.c = tmep[:c] 
  end
  
  def 
  
  def ftoc(fahr)
    ((fahr-32)*(5.0/9)).round
  end

  def ctof(cels)
    cels*(9.0/5)+32
  end

end