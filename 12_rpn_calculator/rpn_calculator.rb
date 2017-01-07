require 'pry'
class RPNCalculator
  attr_accessor :stack
  def initialize
    @stack = []
  end

  def plus
    push(pop + pop)
  end

  def minus
    push(- pop + pop)
  end

  def divide
    push((1 / pop.to_f ) * pop)
  end

  def times
    push(pop * pop)
  end

  def value
    @stack.last
  end

  def pop
    value = stack.pop
    raise "calculator is empty" if value.nil?
    return value
  end

  def push(item)
    stack.push item
  end

  def tokens(str)
    str.split.map do |t|
      case t
      when '+', '-', '*', '/'
        t.to_sym
      else
        t.to_i
      end
    end
  end

  def evaluate(str)
    tokens(str).each do |t|
      case t
      when :+
        plus
      when :-
        minus
      when :/
        divide
      when :*
        times
      else
        push t
      end
    end
    value
  end
end