class RPNCalculator
  def initialize(list = [])
    @list = list
    @total = 0
  end

  def push(number)
    @list.push(number)
  end

  def evaluate(token)
    list = self.tokens(token)
    list.each do |item|
      if item.is_a?(Symbol) == true
        if item == :*
          self.times
        elsif item == :/
          self.divide
        elsif item == :-
          self.minus
        else 
          self.plus
        end
      else
        self.push(item)
      end
    end
    return @total
  end

  def tokens(input)
    newinput = input.split
    newlist = []
    newinput.each do |item|
      if item == "*"||item == "-"||item == "+"||item == "/"
        newlist.push(item.to_sym)
      else 
        newlist.push(item.to_f)
      end
    end
   return newlist
  end

  def plus
    value1 = @list.pop
    value2 = @list.pop
    if value1 == nil || value2 == nil
      raise "calculator is empty"
    else
      @total =  value2 + value1
      @list.push(@total)
    end
  end

  def minus
    value1 = @list.pop
    value2 = @list.pop
    if value1 == nil || value2 == nil
      raise "calculator is empty"
    else
      @total =  value2 - value1
      @list.push(@total)
    end
  end

  def divide
    value1 = @list.pop
    value2 = @list.pop
    if value1 == nil || value2 == nil
      raise "calculator is empty"
    else
      @total =  value2.to_f / value1
      @list.push(@total)
    end
  end

  def times
    value1 = @list.pop
    value2 = @list.pop
    if value1 == nil || value2 == nil
      raise "calculator is empty"
    else
      @total =  value2.to_f * value1
      @list.push(@total)
    end
  end

  def value
    return @total
  end
end