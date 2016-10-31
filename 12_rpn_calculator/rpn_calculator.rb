class RPNCalculator
  def initialize
    @stack = []
  end
  def push(n)
    @stack.push(n.to_f)
  end
  def value
    @stack[-1]
  end
  def operation
    begin
      a = @stack.pop
      b = @stack.pop
      yield(a,b)
    rescue
      raise Exception, "calculator is empty"
    end
  end
  def plus
    operation { |a,b| @stack.push(a + b) }
  end
  def minus
    operation { |a,b| @stack.push(b - a) }
  end
  def times
    operation { |a,b| @stack.push(a * b) }
  end
  def divide
    operation { |a,b| @stack.push(b / a) }
  end

end
