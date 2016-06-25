class RPNCalculator

  def initialize
    @stored_numbers = []
    @result = 0
  end

  attr_accessor :stored_numbers, :result

  def push(value)
    @stored_numbers << value
  end

  def value
    @result
  end

  def plus
    if @stored_numbers.size > 1
      @result += @stored_numbers.pop + @stored_numbers.pop
    elsif @stored_numbers.size > 0
      @result += @stored_numbers.pop
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @stored_numbers.size > 1
      @result += -@stored_numbers.pop + @stored_numbers.pop
    elsif @stored_numbers.size > 0
      @result -= @stored_numbers.pop
    else
      raise "calculator is empty"
    end
  end

  def divide
    if @stored_numbers.size > 1
      @result += (1/@stored_numbers.pop.to_f * @stored_numbers.pop.to_f)
    elsif @stored_numbers.size > 0
      @result /= @stored_numbers.pop.to_f
    else
      raise "calculator is empty"
    end
  end

  def times
    if @stored_numbers.size > 1
      @result += (@stored_numbers.pop.to_f * @stored_numbers.pop.to_f)
    elsif @stored_numbers.size > 0
      @result *= @stored_numbers.pop.to_f
    else
      raise "calculator is empty"
    end
  end

end