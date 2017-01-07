class RPNCalculator
  def initialize
    @order_stack =[]
  end

  def evaluate(string)
    full_stack = tokens(string)
    full_stack.each { |character|
      if (0..9).include? character
        @order_stack << character
      elsif character == :+
        plus
      elsif character == :/
        divide
      elsif character == :*
        times
      elsif character == :-
        minus
      end
    }
    value
  end

  def push(number)
    @order_stack << number
    @order_stack
  end

  def plus
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 0
    total += @order_stack.pop
    total += @order_stack.pop
    @order_stack.push(total)
  end

  def divide
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 1.0
    total /= (@order_stack.pop * 1.0)
    total *= (@order_stack.pop * 1.0)
    @order_stack.push(total)
  end

  def minus
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 0
    total -= @order_stack.pop
    total += @order_stack.pop
    @order_stack.push(total)
  end

  def times
    if @order_stack.size < 2
      raise ("calculator is empty")
    end
    total = 1.0
    total *= (@order_stack.pop * 1.0)
    total *= (@order_stack.pop * 1.0)
    @order_stack.push(total)
  end

  def tokens(string)
    numbers_symbols = []
    string.split.each do |character|
      if ("0".."9").include? character[-1]
        numbers_symbols << character.to_i
      else
        numbers_symbols << character.to_sym
      end
    end
    numbers_symbols
  end

  def value
    @order_stack[-1]
  end

end