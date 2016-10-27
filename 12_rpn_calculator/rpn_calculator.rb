class RPNCalculator

  def initialize(num = 0, arr = [])
    @num = num
    @arr = arr
  end

  def push(num)
    @arr << num
  end

  def plus
    if @arr.length == 0
      raise("calculator is empty")
    elsif @arr.length > 1
      @num += @arr.pop + @arr.pop
    else
      @num += @arr.pop
    end
  end

  def value
    @num
  end

  def minus
    if @arr.length == 0
      raise("calculator is empty")
    elsif @arr.length > 1
      @num -= @arr.pop
      @num += @arr.pop
    else
      @num -= @arr.pop
    end
  end

  def divide
    if @arr.length == 0
      raise("calculator is empty")
    elsif @arr.length > 1
      @num += (@arr[-2] / @arr.pop.to_f)
      @arr.pop
    else
      @num /= @arr.pop.to_f
    end
  end

  def times
    if @arr.length == 0
      raise("calculator is empty")
    elsif @arr.length > 1
      @num += @arr.pop * @arr.pop
    else
      @num *= @arr.pop
    end
  end

  def tokens(string)
    arr = string.split(" ")
    symbols = ["+", "-", "/", "*"]
    arr.collect! do |char|
      if symbols.include?(char)
        char.to_sym
      else
        char.to_i
      end
    end
    arr
  end

  def evaluate(string)
    tokens(string).each do |sym|
      # if sym == :+
      #   self.plus
      # elsif sym == :-
      #   self.minus
      # elsif sym == :/
      #   self.divide
      # elsif sym == :*
      #   self.times
      # else
      #   push(sym.to_f)
      if sym == :-
        self.minus
      elsif sym == :+
        self.plus
      elsif sym == :/
        self.divide
      elsif sym == :*
        self.times
      else
        push(sym.to_f)
      end
    end
    self.value
  end

end
