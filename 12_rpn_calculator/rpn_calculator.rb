class RPNCalculator

  def initialize
    @data = []
  end

  def push(number)
    @data << number
  end

  def plus
    @data << (pop + pop)
  end

  def minus
    @data << (-pop + pop)
  end

  def times
    @data << (pop * pop)
  end

  def divide
    temp = pop.to_f
    result = pop / temp
    @data << result
  end

  def value
    @data.last
  end

  def pop
    number = @data.pop
    raise "calculator is empty" if number.nil?
    return number
  end

  def tokens(string)
    string.split(" ").map do |token|
      case token
      when "+", "-", "*", "/"
        token.to_sym
      else
        token.to_i
      end
    end
  end

  def evaluate(string)
    tokens(string).each do |tokn|
      case tokn
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        @data << tokn
      end
    end
    value #returns @data.last
  end

end