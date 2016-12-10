class RPNCalculator

  def initialize
    @calculator = []
  end

  def push(num)
    @calculator << num
  end

  def plus
    if @calculator.length > 1
      answer = @calculator.pop + @calculator.pop
      @calculator << answer 
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @calculator.length > 1
      second_num = @calculator.pop
      answer = @calculator.pop - second_num
      @calculator << answer 
    else
      raise "calculator is empty"
    end
  end

  def divide
    if @calculator.length > 1
      second_num = @calculator.pop.to_f
      answer = @calculator.pop.to_f / second_num
      @calculator << answer
    else
      raise "calculator is empty"
    end
  end

  def times
    if @calculator.length > 1
      answer = @calculator.pop.to_f * @calculator.pop.to_f
      @calculator << answer
    else
      raise "calculator is empty"
    end
  end

  def value
    @calculator[-1]
  end

  def tokens(token)
    token = token.split(" ")
    token = token.map do |x|
      if (x == "+" || x == "-" || x == "*" || x == "/")
        x.to_sym
      else
        x.to_i
      end
    end
    token
  end

  
  def evaluate(string)
    to_eval = tokens(string)
    to_eval.each do |x| 
      if x==:*
        times
      elsif x==:/
        divide
      elsif x==:+
        plus
      elsif x==:-
        minus
      else
        push(x)
      end
    end
    value
  end 
end