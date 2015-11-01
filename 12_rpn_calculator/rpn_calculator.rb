class RPNCalculator
  def initialize
    @stack = []
    @value = 0
  end

  def value 
    @value
  end

  def push(entry)
    @stack << entry
  end

  def stack_ok?
    if @stack.empty?
      raise "calculator is empty"
      return false
    else
      return true
    end
  end

  def tokens(string)
    input_array = string.split(" ")
    output_array = []
    input_array.each do |item|
      if item.strip == "0" or item.to_f != 0
        output_array << item.to_f
      else
        output_array << item.to_sym
      end
    end
    return output_array
  end

  def plus
    if stack_ok?
      num2 = @stack.pop
      num1 = @stack.pop
      sum = num1 + num2
      @stack << sum
      @value = sum
      return sum
    end
  end

  def minus 
      if stack_ok?
      num2 = @stack.pop
      num1 = @stack.pop
      diff = num1 - num2
      @stack << diff
      @value = diff
      return diff
    end
  end

  def times
    if stack_ok?
      num2 = @stack.pop
      num1 = @stack.pop
      product = num1 * num2
      @stack << product
      @value = product
      return product
    end
  end

  def divide
    if stack_ok?
      num2 = @stack.pop.to_f
      num1 = @stack.pop.to_f
      quotient = num1 / num2
      @stack << quotient
      @value = quotient
      return quotient
    end
  end

  def evaluate(string)
    symbol_stack = tokens(string)
    symbol_stack.each do |symbol|
      if symbol.class == Float
        push(symbol)
      else
        if symbol == :+
          plus
        elsif symbol == :-
          minus
        elsif symbol == :*
          times
        elsif symbol == :/
          divide
        end
      end
    end
    return @value
  end
end