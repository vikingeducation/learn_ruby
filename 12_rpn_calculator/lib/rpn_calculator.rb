class RPNCalculator
  def initialize
    @calc = []
  end

  def long_enough_stack?
    raise "calculator is empty" if @calc.length < 2
  end

  def push(n)
    @calc << n
  end

  def plus
    long_enough_stack?
    @calc.push(@calc.pop + @calc.pop)
  end

  def minus
    long_enough_stack?
    @calc.push((@calc.pop - @calc.pop) * -1 )
  end

  def times
    long_enough_stack?
    @calc.push(@calc.pop * @calc.pop)
  end

  def divide
    long_enough_stack?
    @calc.push(1.0 / (@calc.pop.to_f / @calc.pop.to_f))
  end

  def value
    @calc[-1]
  end

  def tokens(str)
    tokens = str.split(" ")
    tokens = tokens.map do |token|
      if "*/-+".include?(token)
        token = token.to_sym
      else
        token = token.to_i
      end
    end
    tokens
  end

  def evaluate(str)
    tokens = tokens(str)    
    
    i = 0
    while tokens.length > 1
      if tokens[i].is_a?(Symbol)
        num1 = tokens[i - 2].to_f
        num2 = tokens[i - 1].to_f
        sym = tokens[i]
        
        result = num1.send(sym, num2)
        tokens = (tokens[0...i - 2] << result) + tokens[i + 1..-1]
      
        i = 0
      end
      i += 1
    end
    return tokens[0]
  end
    
  
end
