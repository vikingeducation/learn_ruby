class RPNCalculator

  def initialize
    @stack = []
  end

  def push (value)
    @stack.push(value.to_f)
  end

  def plus
    raise "calculator is empty" if @stack.length < 2 
    @stack.push(@stack.pop(2).reduce(:+))
  end

  def minus
    raise "calculator is empty" if @stack.length < 2 
    @stack.push(@stack.pop(2).reduce(:-))
  end

  def times
    raise "calculator is empty" if @stack.length < 2 
    @stack.push(@stack.pop(2).reduce(:*))
  end

  def divide
    raise "calculator is empty" if @stack.length < 2 
    @stack.push(@stack.pop(2).reduce(:/))
  end

  def value
    @stack[-1]
  end

  def tokens (string)
    operators = ['+', '-', '*', '/']

    tokens = string.split.map do |x|
      if operators.include?(x)
        x.to_sym
      else
        x.to_f
      end
    end

    return tokens

  end

  def evaluate (string)

    instructions = tokens (string)

    instructions.each do |x|
      if x.class == Float
        push(x)
      else
        if x == :+
          plus
        elsif x == :-
          minus
        elsif x == :*
          times
        elsif x == :/
          divide
        end
      end  
    end

    value

  end

end

