require 'pry'

class RPNCalculator

  def initialize
    @int_stack = []
  end

  def push(n)
    @int_stack << n
  end

  def plus
    if @int_stack.size >= 2
      num_1 = @int_stack.pop
      num_2 = @int_stack.pop
      num_3 = num_1 + num_2
      @int_stack.push(num_3)
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @int_stack.size >= 2
      num_1 = @int_stack.pop
      num_2 = @int_stack.pop
      num_3 = num_2 - num_1
      @int_stack.push(num_3)
    else
      raise "calculator is empty"
    end   
  end

  def divide
    if @int_stack.size >= 2
      num_1 = @int_stack.pop.to_f
      num_2 = @int_stack.pop.to_f
      num_3 = num_2 / num_1
      @int_stack.push(num_3)
    else
      raise "calculator is empty"
    end 
  end

  def times
    if @int_stack.size >= 2
      num_1 = @int_stack.pop.to_f
      num_2 = @int_stack.pop.to_f
      num_3 = num_1 * num_2
      @int_stack.push(num_3)
    else
      raise "calculator is empty"
    end
  end

  def tokens(str)
    math_operators = ['+','*','-','/']
    split_str = str.split(' ')
    split_str.map! do |i|
      if math_operators.include?(i)
        i.to_sym
      else 
        i.to_i
      end
    end
    split_str
  end

  def evaluate(str)
    token_array = tokens(str)
    token_array.each do |i|
      case i
      when :*
        times
      when :+
        plus
      when :-
        minus
      when :/
        divide
      else
        push(i)
      end
    end
    value
  end

  def value
    @int_stack[-1]
  end

end