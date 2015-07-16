class RPNCalculator
  def initialize
    @operands = []
    @notation = []
  end

  def push(num)
    @operands.push(num)
  end

  def value
    @operands[-1]
  end

  def plus
    raise "calculator is empty" if @operands.length < 2
    @operands.push(@operands.pop + @operands.pop)
  end

  def minus
    raise "calculator is empty" if @operands.length < 2
    @operands.push(-(@operands.pop - @operands.pop))
  end

  def times
    raise "calculator is empty" if @operands.length < 2
    @operands.push(@operands.pop.to_f * @operands.pop)
  end

  def divide
    raise "calculator is empty" if @operands.length < 2
    @operands.push(1.0 / (@operands.pop.to_f / @operands.pop))
  end

  def tokens(s)
    operators = "+-*/"
    nums = "1234567890"
    @notation = s.split(" ").map do |c|
      if nums.include?(c)
        c.to_i
      elsif operators.include?(c)
        c.to_sym
      end
    end
    @notation
  end

  def evaluate(s)
    tokens(s)
    @notation.each do |item|
      if item.is_a? Integer
        push(item)
      elsif item.is_a? Symbol
        case item
        when :+ then plus
        when :- then minus
        when :* then times
        when :/ then divide
        end
      end
    end
    value
  end

end