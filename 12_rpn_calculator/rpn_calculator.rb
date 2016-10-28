class RPNCalculator

  def initialize
    @sequence = []
  end

  def push(num)
    @sequence << num
  end

  def plus
    if @sequence.length < 2
      raise "calculator is empty"
    else
      @result = @sequence.delete_at(-2).to_f + @sequence.pop
      push(@result)
    end
  end

  def minus
    if @sequence.length < 2
      raise "calculator is empty"
    else
      @result = @sequence.delete_at(-2).to_f - @sequence.pop
      push(@result)
    end
  end

  def divide
    if @sequence.length < 2
      raise "calculator is empty"
    else
      @result = @sequence.delete_at(-2).to_f / @sequence.pop
      push(@result)
    end
  end

  def times
    if @sequence.length < 2
      raise "calculator is empty"
    else
      @result = @sequence.delete_at(-2).to_f * @sequence.pop
      push(@result)
    end
  end

  def tokens(string)
    string.split(" ").map! do |element|
      if element.match(/\d/)
        element.to_f
      else
        element.to_sym
      end
    end
  end

  def evaluate(string)
    tokenized = tokens(string)
    tokenized.each do |element|
      if element == :+
        plus
      elsif element == :-
        minus
      elsif element == :/
        divide
      elsif element == :*
        times
      else
        push(element)
      end
    end
    value
  end

  def value
    @result
  end

end