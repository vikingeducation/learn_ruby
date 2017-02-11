class RPNCalculator

  attr_accessor :stack, :value

  def initialize
    @stack = []
    @value = 0
  end

  def tokens(s)
    operators = "* + - /".split(" ")
    s.split(" ").map do |char|
      if operators.include?(char)
        char.to_sym
      else
        char.to_i
      end
    end
  end

  def map_operators(op)
    {
      :* => method(:times),
      :/ => method(:divide),
      :- => method(:minus),
      :+ => method(:plus)
    }[op]
  end

  def evaluate(s)
    operators = [:*, :/, :+, :-]
    stack_ = tokens(s)
    stack_.each do |i|
      if i.is_a?(Integer)
        push(i)
      elsif operators.include?(i)
        map_operators(i).call
      end
    end
    value
  end

  def empty_stack_error
    raise "calculator is empty"
  end

  def push(n)
    stack.push(n)
  end

  def plus
    if stack.empty?
      empty_stack_error
    end
    x, y = stack.pop, stack.pop
    result = x + y
    @value = result
    push(result)
  end

  def minus
    if stack.empty?
      empty_stack_error
    end
    x, y = stack.pop, stack.pop
    result = y - x
    @value = result
    push(result)
  end

  def divide
    if stack.empty?
      empty_stack_error
    end
    x, y = stack.pop, stack.pop
    result = y.to_f / x.to_f
    @value = result
    push(result)
  end

  def times
    if stack.empty?
      empty_stack_error
    end
    x, y = stack.pop, stack.pop
    result = x * y
    @value = result
    push(result)
  end

end
