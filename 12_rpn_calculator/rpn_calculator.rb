class RPNCalculator
  attr_accessor :calculator, :value, :result, :operators

  def initialize
    @calculator = []
    @operators = ['-', '+', '/', '*']
  end

  def push(num)
    @calculator.push(num)
  end

  def plus
    if @calculator.empty?
      error
    end
    if @result
      @result += @calculator.pop
    else
      @result = @calculator.pop + @calculator.pop
    end
  end

  def minus
    if @calculator.empty?
      error
    end
    first_num = @calculator.pop
    @result = @calculator.pop - first_num
  end

  def divide
    if @calculator.empty?
      error
    end
    first_num = @calculator.pop.to_f
    @result = (@calculator.pop.to_f / first_num)
  end

  def times
    if @calculator.empty?
      error
    end
    if @result
      @result *= @calculator.pop
    else
    @result = (@calculator.pop * @calculator.pop.to_f)
  end
  end

  def tokens(str)
    arr = str.split
    arr.each do |token|
      if @operators.include?(token)
        arr[arr.index(token)] = token.to_sym
      else
        arr[arr.index(token)] = token.to_i
      end
    end
    return arr
  end

  def value
    @result
  end

  def error
    begin
      raise Exception.new("calculator is empty")
    end
  end

end
