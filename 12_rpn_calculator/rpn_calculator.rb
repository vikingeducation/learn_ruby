class RPNCalculator
  attr_accessor :calculator

  def initialize
    @calc =[]
  end

  def push(n=0)
    @calc.push(n)
  end

  def plus
    raise "calculator is empty" if @calc.length < 2

    @calc[-2] += @calc[-1]
    @calc.pop

  end

  def value
    @calc[-1]
  end

  def minus
    raise "calculator is empty" if @calc.length < 2
    @calc[-2] -= @calc[-1]
    @calc.pop
  end

  def divide
    raise "calculator is empty" if @calc.length < 2
    @calc[-2] /= @calc[-1].to_f
    @calc.pop
  end

  def times
    raise "calculator is empty" if @calc.length < 2
    @calc[-2] *= @calc[-1].to_f
    @calc.pop
  end

end
