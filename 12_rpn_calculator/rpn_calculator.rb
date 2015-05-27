class RPNCalculator

  def initialize
    @values = []
  end

  def push(num)
    @values.push(num)
  end

  def plus
    raise_error() if @values.size < 2
    first_value = @values.pop
    second_value = @values.pop
    @values.push(first_value + second_value)
  end

  def minus
    raise_error() if @values.size < 2
    first_value = @values.pop
    second_value = @values.pop
    @values.push(second_value - first_value)
  end

  def divide
    raise_error() if @values.size < 2
    first_value = @values.pop
    second_value = @values.pop
    @values.push(second_value.to_f / first_value.to_f)
  end

  def times
    raise_error() if @values.size < 2
    first_value = @values.pop
    second_value = @values.pop
    @values.push(second_value * first_value)
  end

  def value
    @values[-1]
  end

  def raise_error
    raise "calculator is empty"
  end

end