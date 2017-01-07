class RPNCalculator

  def initialize
    @calculator = []
  end

  def push(num)
    return @calculator.push(num.to_f)
  end

  def plus
    alert
    return @calculator.push(@calculator.pop + @calculator.pop)
  end

  def minus
    alert
    num2 = @calculator.pop
    return @calculator.push(@calculator.pop - num2)
  end

  def divide
    alert
    num2 = @calculator.pop
    return @calculator.push(@calculator.pop / num2)
  end

  def times
    alert
    return @calculator.push(@calculator.pop * @calculator.pop)
  end

  def value
    return @calculator.last
  end

  def alert
    if @calculator.size <= 1
      raise "calculator is empty"
    end
  end

end