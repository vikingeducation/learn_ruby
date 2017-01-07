class RPNCalculator
  attr_reader :stack
  
  def initialize
    @stack = []
  end

  def clear
    @stack = []
  end
  
  def value
    stack[-1]
  end

  def push(num)
    stack.push(num)
  end

  def plus
    second_operand = operand
    first_operand = operand
    push_val = first_operand + second_operand
    push(push_val)
  end

  def minus
    second_operand = operand
    first_operand = operand
    push_val = first_operand - second_operand
    push(push_val)
  end

  def times
    second_operand = operand
    first_operand = operand
    push_val = first_operand * second_operand
    push(push_val)
  end

  def divide
    second_operand = operand
    first_operand = operand
    push_val = first_operand / second_operand.to_f
    push(push_val)
  end

  def tokens(expression)
    symbols = ["*", "+", "/", "-"]
    expression.split(" ").map do |char|
      if symbols.include?(char)
      char.to_sym
      else
      char.to_i
      end
    end
  end

  def evaluate(expression)
    expression = tokens(expression)
    expression.each do |i|
      case i
      when Integer
        push(i)
      when :-
        minus
      when :+
        plus
      when :/
        divide
      when :*
        times
      end
    end

    value
  end


  private

  def operand
    raise "calculator is empty" if stack[-1] == nil
    stack.pop
  end

end

#current directory must be lib to properly load calculator_instructions.rb
if __FILE__ == $PROGRAM_NAME
  if ARGV.length == 1
    file = ARGV.pop
    expressions = File.readlines(file).flatten
    expressions.each do |expression|
      puts RPNCalculator.new.evaluate(expression.strip)
    end 
  else
    input = 0
    expression = ""
    until input == ""
      puts "insert operand or operator"
      input = gets.chomp
      expression << "#{input} "
    end

    puts RPNCalculator.new.evaluate(expression.strip)
  end
end
