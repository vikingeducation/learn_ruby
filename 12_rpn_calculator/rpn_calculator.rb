class RPNCalculator


  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def plus
    if @stack.length ==0
      empty_error
    end
    sum = @stack.pop
    sum += @stack.pop
    @stack.push(sum)
  end
  def minus
    if @stack.length ==0
      empty_error
    end
    num_1 = @stack.pop
    num_2 = @stack.pop
    @stack.push(num_2-num_1)
  end

  def divide
    if @stack.length ==0
      empty_error
    end
    num_1 = @stack.pop.to_f
    num_2 = @stack.pop
    @stack.push(num_2/num_1)
  end

  def times
    if @stack.length ==0
      empty_error
    end
    num_1 = @stack.pop
    num_2 = @stack.pop
    @stack.push(num_2*num_1)
  end

  def empty_error
    raise("calculator is empty")
  end


  def value
    @stack[-1]
  end



end
