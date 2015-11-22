class RPNCalculator
  def initialize
    @order_stack =[]
  end

  def push(number)
    @order_stack << number
    @order_stack
  end

  def plus
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 0
    total += @order_stack.pop
    total += @order_stack.pop
    @order_stack.push(total)
  end

  def divide
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 1.0
    total /= (@order_stack.pop * 1.0)
    total *= (@order_stack.pop * 1.0)
    @order_stack.push(total)
  end

  def minus
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 0
    total -= @order_stack.pop
    total += @order_stack.pop
    @order_stack.push(total)
  end

  def times
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 1.0
    total *= (@order_stack.pop * 1.0)
    total *= (@order_stack.pop * 1.0)
    @order_stack.push(total)
  end

  def value
    @order_stack[-1]
  end

end

calculator = RPNCalculator.new
calculator.push(4)
calculator.push(4)
calculator.push(4)
calculator.plus
calculator.plus
puts calculator.value


