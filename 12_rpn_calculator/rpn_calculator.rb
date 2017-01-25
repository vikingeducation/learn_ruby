class RPNCalculator
  attr_accessor :expression, :stack

  def initialize
    @expression = ""
    @stack = []
  end

  def push(operand)
    @expression << operand.to_s + " "
  end

  def plus
    # @expression.empty? ? raise "calculator is empty" : @expression << "+ "
    if @expression.empty?
      raise "calculator is empty"
    else
      @expression << "+ "
    end
  end

  def minus
    if @expression.empty?
      raise "calculator is empty"
    else
      @expression << "- "
    end
  end

  def divide
    if @expression.empty?
      raise "calculator is empty"
    else
      @expression << "/ "
    end
  end

  def times
    if @expression.empty?
      raise "calculator is empty"
    else
      @expression << "* "
    end
  end

  def value
    tokens = @expression.split

    until tokens.empty?
      token = tokens.shift

      unless operator?(token)
        @stack.push(token)
      else
        second_operand = @stack.pop.to_f
        first_operand = @stack.pop.to_f
        result = nil

        case token
        when "+"
          result = first_operand + second_operand
        when "-"
          result = first_operand - second_operand
        when "/"
          result = first_operand / second_operand
        when "*"
          result = first_operand * second_operand
        end

        @stack.push(result)
      end
    end

    return @stack.last
  end

  def tokens(string)
    tokens = string.split
    result = []

    tokens.each do |token|
      if operator?(token)
        result << token.to_sym
      else
        result << token.to_f
      end
    end

    result
  end

  def operator?(value)
    operators = %w(+ - / *)
    operators.include?(value)
  end
end

# calc = RPNCalculator.new
# calc.push(2)
# calc.push(3)
# calc.push(4)
# calc.divide
# calc.times
# p calc.expression
# p calc.value