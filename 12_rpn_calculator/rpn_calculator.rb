class RPNCalculator
  attr_reader :value, :stack

  def initialize
    @stack =[]
    @value = nil
  end

  def push(n)
    @stack << n
  end

  def plus
    if @stack.size > 1
      @value = @stack.pop + @stack.pop
      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @stack.size > 1
      second_number = @stack.pop
      first_number = @stack.pop
      @value = first_number - second_number
      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  def divide
    if @stack.size > 1
      second_number = @stack.pop.to_f
      first_number = @stack.pop.to_f
      @value = first_number / second_number
      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  def times
    if @stack.size > 1
      @value = @stack.pop * @stack.pop
      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  def tokens(string)
    operators = ['+', '-', '/', '*']
    output = []
    string.split(' ').map  do |token|
      if operators.include?(token)
        output << token.to_sym
      else
        output << token.to_i
      end
    end
    output
  end

  def evaluate(string)
    calculate_this = tokens(string)
    calculate_this.each do |token| 
      if token == :+
        plus
      elsif token == :-
        minus
      elsif token == :/
        divide
      elsif token == :*
        times
      else
        push(token)
      end
    end
    @value
  end

end