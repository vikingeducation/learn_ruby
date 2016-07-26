class RPNCalculator
  attr_accessor :calculator

  def initialize
    @calculator = []
  end

  def push(num)
    @calculator << num
  end

  def plus
    long_enough_stack?
    @calculator << (@calculator.pop + @calculator.pop)
  end

  def value
    @calculator.last
  end

  def minus
    long_enough_stack?
    @calculator << ((@calculator.pop - @calculator.pop) * -1)
  end

  def divide
    long_enough_stack?
    @calculator << (1.0 / (@calculator.pop.to_f / @calculator.pop.to_f))
  end

  def times
    long_enough_stack?
    @calculator << (@calculator.pop.to_f * @calculator.pop.to_f)
  end

  def long_enough_stack?
    raise "calculator is empty" if @calculator.length < 2
  end
end