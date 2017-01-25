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
    @expression << "+ "
  end

  def minus
    @expression << "- "
  end

  def divide
    @expression << "/ "
  end

  def times
    @expression << "* "
  end

  def value
    tokens = @expression.split

    until tokens.empty?
      token = tokens.shift
      p token

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