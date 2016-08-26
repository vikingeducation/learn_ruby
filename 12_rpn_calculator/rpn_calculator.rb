class RPNCalculator
  

  def initialize
    @stack = []
  end  
  
  def push(n)
    @stack << n
  end

  def plus
    if @stack.length < 2
      self.intelligent_fail
    else
      @stack << @stack.pop + @stack.pop
    end
  end

  def minus
    if @stack.length < 2
      self.intelligent_fail
    else
      num2 = @stack.pop
      num1 = @stack.pop
      @stack << num1 - num2
    end
  end

  def times
    if @stack.length < 2
      self.intelligent_fail
    else
      num2 = @stack.pop
      num1 = @stack.pop
      @stack << num1 * num2
    end
  end

  def divide
    if @stack.length < 2
      self.intelligent_fail
    else
      num2 = @stack.pop
      num1 = @stack.pop
      @stack << num1 / num2.to_f
    end
  end

  def value
    if @stack.length < 1
      self.intelligent_fail
    else
      @stack[-1]
    end
  end

  def intelligent_fail
    raise "calculator is empty"
  end

  def tokens(string)
    @tokens = string.split{" "}
    @tokens.map! do |x|
      if x == "+"
        x = :+
      elsif x == "-"
        x = :-
      elsif x == "/"
        x = :/
      elsif x == "*"
        x = :*
      else
        x = x.to_i
      end
    end
    @tokens
  end

  def evaluate(string)
    @tokens = tokens(string)
    @stack = []
    while @tokens.length > 0
      self.process
    end
    return @stack[0]
  end

  def process
    token = @tokens.shift
    if operator?(token)
      val2 = @stack.pop
      val1 = @stack.pop.to_f
      @stack << eval(val1.to_s + token.to_s + val2.to_s)
    else
      @stack << token 
    end  
  end

  def operator?(token)
    [:+,:-,:*, :/].include?(token)
  end

end