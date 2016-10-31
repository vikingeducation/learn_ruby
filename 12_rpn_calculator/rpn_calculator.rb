class RPNCalculator
  attr_accessor :calculator
  def initialize
    @numbers = []
  end
  def push(n)
    @numbers.push n
  end
  def value
    @numbers[-1]
  end
  def plus
    if @numbers.size>= 2
      @numbers.push (@numbers.pop + @numbers.pop)
    else
      raise "calculator is empty"
    end
  end
  def minus
    if @numbers.size>= 2
      new_n = (@numbers[-2] - @numbers[-1])
      @numbers.pop(2)
      @numbers.push new_n
    else
      raise "calculator is empty"
    end
  end
  def divide
    if @numbers.size>= 2
      new_n = (@numbers[-2].to_f / @numbers[-1].to_f)
      @numbers.pop(2)
      @numbers.push new_n
    else
      raise "calculator is empty"
    end
  end
  def times
    if @numbers.size>= 2
      new_n = (@numbers[-2] * @numbers[-1])
      @numbers.pop(2)
      @numbers.push new_n
    else
      raise "calculator is empty"
    end
  end
  def tokens(string)
    operators = ["+", "-", "*", "/"]
    inputs = string.split ' '
    tokenized = inputs.collect do |input|
      if operators.include? input
        input.to_sym
      else
        input.to_i
      end
    end
    tokenized
  end
  def evaluate(string)
    tokens(string).each do |input|
      if input == :+
        self.plus
      elsif input == :-
        self.minus
      elsif input == :/
        self.divide
      elsif input == :*
        self.times
      else
        self.push input
      end
    end
    self.value
  end

end