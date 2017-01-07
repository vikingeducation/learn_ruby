class RPNCalculator
  def initialize
    @nums = []
    @value = 0
  end

  def push(num)
    @nums.push(num)
  end


  def plus
    if @nums.empty?
      raise Exception, "calculator is empty"
    else
      operand2 = @nums.pop
      operand1 = @nums.pop
      @nums << @value = operand1 + operand2
    end
  end

  def minus
    if @nums.empty?
      raise Exception, "calculator is empty"
    else
      operand2 = @nums.pop
      operand1 = @nums.pop
      @nums << @value = operand1 - operand2
    end
  end

  def times
    if @nums.empty?
      raise Exception, "calculator is empty"
    else
      operand2 = @nums.pop
      operand1 = @nums.pop
      @nums << @value = operand1 * operand2
    end
  end

  def divide
    if @nums.empty?
      raise Exception, "calculator is empty"
    else
      operand2 = @nums.pop.to_f
      operand1 = @nums.pop.to_f
      @nums << @value = operand1 / operand2
    end
  end

  def value
    @value
  end

  #extra_credit: tokens
  def tokens(string)
    tokens = []
    string = string.split(" ")
    string.each do |token|
      if token =~ /[1-9]/
        tokens << token.to_i
      elsif token =~ /[+\-*\/]/
        tokens << token.to_sym
      end
    end
    tokens
  end

  #extra_credit: evaluate a string

  def calculate(token)
    if token == :+
      self.plus
    elsif token == :-
      self.minus
    elsif token == :*
      self.times
    elsif token == :/
      self.divide
    end
  end

  def evaluate(string)
    tokens = self.tokens(string)
    tokens.each do |token|
      if token.is_a?(Integer)
        self.push(token)
      elsif token.is_a?(Symbol)
        self.calculate(token)
      end
    end
    self.value
  end
end
