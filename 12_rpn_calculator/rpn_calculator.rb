class RPNCalculator

  attr_accessor :calculator

  def initialize
    @calculator = []
  end

  def push(number)
    @calculator.push(number)
  end

  def plus
    @calculator.push(pop + pop)
  end

  def minus
    first, second = pop, pop
    @calculator.push(second - first)
  end

  def divide
    first, second = pop, pop
    @calculator.push(second.to_f / first.to_f)
  end

  def times
    @calculator.push(pop * pop)
  end

  def pop
    raise "calculator is empty" if @calculator.empty?
    value = @calculator.pop
    return value
  end

  def value
    @calculator.last
  end

end
