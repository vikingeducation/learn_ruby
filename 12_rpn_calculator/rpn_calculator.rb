class RPNCalculator
  attr_accessor :stack
  attr_accessor :value
  def initialize
    @stack = []
    @value = 0
  end
  def push(num)
    @stack.push(num)
  end
  def operate
    error_empty if @stack.length < 2
    second = @stack.pop
    first = @stack.pop
    new_value = yield(second, first)
    @stack.push(new_value)
    @value = new_value
  end
  def plus
    operate { |second, first| first + second }
    @value
  end
  def minus
    operate { |second, first| first - second }
    @value
  end
  def divide
    operate { |second, first| first.to_f / second.to_f }
    @value
  end
  def times
    operate { |second, first| first * second }
    @value
  end
  def error_empty
    raise "calculator is empty"
  end
  def tokens(string)
    string.split(" ").map do |token|
      if token.match(/\d/)
        token.to_i
      elsif ['+', '-', '*', '/'].include?(token)
          token.to_sym
      end
    end
  end
  def evaluate(string)
    tokens(string).each do |token|
      if token.is_a?(Integer)
        push(token)
      else
        case token
        when :+
          plus
        when :-
          minus
        when :*
            times
        when :/
            divide
        end
      end
    end
    @value
  end
end