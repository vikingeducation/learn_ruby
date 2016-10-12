#be able to sequence go back to back with operations w/o creating new obj
class RPNCalculator
  
  attr_reader :value
  
  # def value
  #   @value
  # end
  
  def initialize
    @stack = []
    @value = 0
  end
  
  def push number
    @stack << number
  end
  
  def plus
    raise "calculator is empty" if @stack.length < 2
    addition = @stack.pop + @stack.pop
  
    @stack.push(addition)
    @value = addition
  end
  
  def minus
    raise "calculator is empty" if @stack.length < 2
    subtraction = (@stack.pop - @stack.pop) * -1
    
    @stack.push(subtraction)
    @value = subtraction
  end  
  
  def divide
    raise "calculator is empty" if @stack.length < 2
    last = @stack.pop.to_f
    second_last = @stack.pop.to_f
    action = second_last / last
    
    @stack.push(action)
    @value = action
  end   
  
  def times
    raise "calculator is empty" if @stack.length < 2
    last = @stack.pop.to_f
    second_last = @stack.pop.to_f
    action = second_last * last
    
    @stack.push(action)
    @value = action
  end     
  
  def tokens string
    string.split(" ").map do |token|
      (token.match(/\d+/)) ? token.to_i : token.to_sym
    end
    
  end
  
  def evaluate string
    
    string.split(" ").each do |item|
      if item.match(/\d+/)
        @stack.push(item.to_f)
      elsif item == '+'
        plus
      elsif item == '-'
        minus
      elsif item == '*'
        times
      elsif item == '/'
        divide
      end
    end
    value
    
  end

  

end
