class RPNCalculator

  def initialize
  @calc = []
  @ans = 0
  end

  def push(num)
    @calc.push(num)
  end

  def plus
    if @calc.length > 1
      @ans = @calc.pop + @calc.pop
      @calc << @ans
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @calc.length > 1
      second = @calc.pop
      first = @calc.pop
      @ans =  first - second
      @calc << @ans
    else
      raise "calculator is empty"
    end
  end

  def divide
    if @calc.length > 1
    divisor = @calc.pop
    dividend = @calc.pop
    @ans = dividend.to_f/divisor
    @calc << @ans
    else
      raise "calculator is empty"
    end
  end

  def times
    if @calc.length > 1
      first = @calc.pop
      second = @calc.pop
      @ans = first*second
      @calc << @ans
    else
      raise "calculator is empty"
    end
  end


  def value
    @ans
  end

  def tokens(str)
    token = []
    str.split.each do |i|
      if ("+-*/").include?(i)
        token << i.to_sym
      else
        token << i.to_i
      end
    end
    token
  end

  def evaluate(str)
    tokens(str).each do |i|
      if i.is_a?(Symbol)
        case i
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        end
      else
         @calc.push(i)
      end
    end
      @ans
  end
end