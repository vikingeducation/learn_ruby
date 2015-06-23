require 'pry'
class RPNCalculator

  attr_accessor :calculator, :result

  def initialize
    @calculator = []
  end

  def push(num)
    @calculator << num
  end

  def plus
    check_stack
    @result = @calculator.pop + @calculator.pop
    @calculator.push @result
    @result
  end

  def value
    @result
  end

  def minus
    check_stack
    @result = -1 * @calculator.pop + @calculator.pop
    @calculator.push @result
    @result
  end

  def divide
    check_stack
    second = @calculator.pop
    @result = @calculator.pop / second.to_f
    @calculator.push @result
    @result
  end

  def times
    check_stack
    @result = @calculator.pop * @calculator.pop.to_f
    @calculator.push @result
    @result
  end

  def check_stack
    raise "calculator is empty" if @calculator.length < 2
  end

  def tokens(string)
    equation=string.split(" ")

    equation.map do |item|
      /\D/ === item ? item.to_sym : item.to_i
    end
  end

  def evaluate(string)
    equation = tokens(string)

    equation.each do |token|
      if token.class == Fixnum
        push(token)
      elsif :+ == token
        plus
      elsif :- == token
        minus
      elsif :* == token
        times
      elsif :/ == token
        divide
      end
    end

    value
  end

end

calculator = RPNCalculator.new
calculator.evaluate("1 2 3 * +")