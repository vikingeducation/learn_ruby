class RPNCalculator
  def initialize
    @array = Array.new
  end

  def push(input)
    @array << input.to_i
  end

  def plus
    @array << @array.pop + @array.pop
    @value = @array.last
  end

  def minus
    @array[-2] -= @array.last
    @array.pop
    @value = @array.last
  end

  def divide
    @array[-2] /= @array[-1].to_f
    @array.pop
    @value = @array.last
  end

  def value
    @value
  end

end