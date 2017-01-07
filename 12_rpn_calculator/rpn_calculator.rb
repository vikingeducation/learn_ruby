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

  def tokens (s)
    a = s.split(" ")
    operators = ["+", "-", "/", "*"]
    a.collect! do |x|
      if operators.include?(x)
        x.to_sym
      elsif x.include?(".")
        x.to_f
      else
        x.to_i
      end
    end
  end

  def evaluate(s)
    a = self.tokens(s)
    a.each do |x|
      case
      when x == :+ then self.plus
      when x == :- then self.minus
      when x == :* then self.times
      when x == :/ then self.divide
      else self.push(x)
      end
    end
    self.value
  end


end
