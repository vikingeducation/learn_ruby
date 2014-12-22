class RPNCalculator
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(n)
    stack.push n
  end

  def plus
    check_for_empty_stack
    addend_a = stack.pop
    addend_b = stack.pop
    sum = addend_a + addend_b
    stack.push sum
  end

  def minus
    check_for_empty_stack
    subtrahend = stack.pop
    minuend = stack.pop
    difference = minuend - subtrahend
    stack.push difference
  end

  def divide
    check_for_empty_stack
    divisor = stack.pop.to_f
    dividend = stack.pop
    quotient = dividend / divisor
    stack.push quotient
  end

  def times
    check_for_empty_stack
    factor_a = stack.pop
    factor_b = stack.pop
    product = factor_a * factor_b
    stack.push product
  end

  def value
    stack.last
  end

  def check_for_empty_stack
    if stack.empty?
      raise "calculator is empty"
    end
  end

  def tokens(string)
    array = string.split(" ")
    array.map do |token|
      if token =~ /\d/
        token.to_i
      else
        token.to_sym
      end
    end
  end

  def evaluate(string)
    queue = tokens(string)
    queue.each do |item|
      if item.class == Fixnum
        push(item)
      else
        do_operation(item)
      end
    end
    value
  end

  def do_operation(operation)
    case operation
    when :+
      plus
    when :-
      minus
    when :/
      divide
    when :*
      times
    end
  end
end