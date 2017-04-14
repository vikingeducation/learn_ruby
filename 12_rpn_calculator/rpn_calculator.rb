class RPNCalculator
  def initialize
    @stack = []
  end

  def push(number)
    @stack.push(number)
  end

  def plus
    x = @stack.pop
    x == nil ? raise("calculator is empty") : nil
    y = @stack.pop
    @stack.push(x+y)
  end

  def minus
    x = @stack.pop
    x == nil ? raise("calculator is empty") : nil
    y = @stack.pop
    @stack.push(y-x)
  end

  def times
    x = @stack.pop
    x == nil ? raise("calculator is empty") : nil
    y = @stack.pop
    @stack.push(y*x)
  end

  def divide
    x = @stack.pop.to_f
    x == 0.0 ? raise("calculator is empty") : nil
    y = @stack.pop.to_f
    @stack.push(y/x)
  end

  def value
    @stack[-1]
  end

end
