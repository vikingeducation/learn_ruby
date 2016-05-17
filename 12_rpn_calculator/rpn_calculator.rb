
class RPNCalculator

  attr_accessor :stack

  def initialize
    @stack = []
  end

  def value
    return @stack[@stack.length - 1]
  end

  def push(input)
    @stack.push(input)
  end

  def plus(index = nil)
    if @stack.length < 1
      raise "calculator is empty"
    elsif index == nil
      result = @stack.pop + @stack.pop
      @stack.push(result)
    else
      @stack[index] = @stack[index - 2] + @stack[index - 1]
      @stack.delete_at(index - 1)
      @stack.delete_at(index - 2)
    end
  end

  def minus(index = nil)
    if @stack.length < 1
      raise "calculator is empty"
    elsif index == nil
      result = -@stack.pop + @stack.pop
      @stack.push(result)
    else
      @stack[index] = @stack[index - 2] - @stack[index - 1]
      @stack.delete_at(index - 1)
      @stack.delete_at(index - 2)
    end
  end

  def times(index = nil)
    if @stack.length < 1
      raise "calculator is empty"
    elsif index == nil
      result = @stack.pop * @stack.pop
      @stack.push(result)
    else
      @stack[index] = @stack[index - 2] * @stack[index - 1]
      @stack.delete_at(index - 1)
      @stack.delete_at(index - 2)
    end
  end

  def divide(index = nil)
    if @stack.length < 1
      raise "calculator is empty"
    elsif index == nil
      last = @stack.pop.to_f
      penultimate = @stack.pop.to_f
      result = penultimate / last
      @stack.push(result)
    else
      @stack[index] = @stack[index - 2].to_f / @stack[index - 1].to_f
      @stack.delete_at(index - 1)
      @stack.delete_at(index - 2)
    end
  end

  def tokens(string)
    tokens = string.split(" ")
    parsed_set = []
    tokens.each do |token|
      parsed_token = token.to_i
      if parsed_token == 0
        if token == "0"
          parsed_set << 0
        else
          parsed_set << token.to_sym
        end
      else
        parsed_set << parsed_token
      end
    end
    parsed_set
  end

  def stack_string(string)
    parsed_set = tokens(string)
    parsed_set.each do |token|
      @stack.push(token)
    end
  end

  def evaluate(string)
    stack_string(string)
    index = 0
    until @stack.length == 1
      token = @stack[index]
      if token.class == Symbol
        case token
        when :+
          plus(index)
          p @stack
          index = 0
        when :-
          minus(index)
          p @stack
          index = 0
        when :*
          times(index)
          p @stack
          index = 0
        when :/
          divide(index)
          p @stack
          index = 0
        end
      end
      index += 1
    end
    result = @stack[0]
    @stack = []
    return result
  end

end

=begin
calculator = RPNCalculator.new
#p calculator.evaluate("1 2 3 * +")
#p calculator.evaluate("4 5 -")
#p calculator.stack_string("2 3 /")
#p calculator.evaluate("2 3 /")
#p calculator.evaluate("1 2 3 * + 4 5 - /") == -7
=end
