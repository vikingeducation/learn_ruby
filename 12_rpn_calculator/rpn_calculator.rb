class RPNCalculator
  def initialize
    @stack = []
  end

  def push(item)
    @stack.push(item)
  end

  def value
    @stack[-1]
  end

  def plus
    raise Exception.new("calculator is empty") if @stack.length < 2
    operand1 = @stack.pop
    operand2 = @stack.pop
    result = operand1 + operand2
    @stack.push(result)
  end

  def minus
    raise Exception.new("calculator is empty") if @stack.length < 2
    operand1 = @stack.pop
    operand2 = @stack.pop
    result = operand2 - operand1
    @stack.push(result)
  end

  def divide
    raise Exception.new("calculator is empty") if @stack.length < 2
    operand1 = @stack.pop
    operand2 = @stack.pop
    result = operand2.to_f / operand1.to_f
    @stack.push(result)
  end

  def times
    raise Exception.new("calculator is empty") if @stack.length < 2
    operand1 = @stack.pop
    operand2 = @stack.pop
    result = operand1 * operand2
    @stack.push(result)
  end

  def tokens(tokens)
    tokens.split.map do |token|
      case token
      when /[[:digit:]]/
        token.to_i
      else
        token.to_sym
      end
    end
  end

  def evaluate(string)
    tokens = tokens(string)
    stack_calc = RPNCalculator.new
    tokens.each do |token|
      case token
      when Numeric
        stack_calc.push(token)
      else
        if token == :+
          stack_calc.plus
        elsif token == :-
          stack_calc.minus
        elsif token == :*
          stack_calc.times
        elsif token == :/
          stack_calc.divide
        else
          raise Exception.new("token not defined")
        end
      end
    end
    stack_calc.value
  end
end

