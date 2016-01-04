class RPNCalculator
  attr_accessor :stack, :value

  def initialize
    @stack = []
    @value = 0
  end

  def push(number)
    @stack << number
  end

  def plus
    if @stack.length < 2
      raise Exception.new("calculator is empty")
    end

    @value = 0
    adding_numbers = []
    2.times { adding_numbers << @stack.pop }
    sum = adding_numbers[1] + adding_numbers[0]
    @stack << sum
    @value = @stack[-1]
    @value
  end

  def minus
    if @stack.length < 2
      raise Exception.new("calculator is empty")
    end

    @value = 0
    subtracting_numbers = []
    2.times { subtracting_numbers << @stack.pop }
    difference = subtracting_numbers[1] - subtracting_numbers[0]
    @stack << difference
    @value = @stack[-1]
    @value
  end

  def times
    if @stack.length < 2
      raise Exception.new("calculator is empty")
    end

    @value = 0
    multiplying_numbers = []
    2.times { multiplying_numbers << @stack.pop }
    product = multiplying_numbers[1] * multiplying_numbers[0]
    @stack << product
    @value = @stack[-1]
    @value
  end

  def divide
    if @stack.length < 2
      raise Exception.new("calculator is empty")
    end

    @value = 0
    dividing_numbers = []
    2.times { dividing_numbers << @stack.pop.to_f }
    quotient = dividing_numbers[1] / dividing_numbers[0]
    @stack << quotient
    @value = @stack[-1]
    @value
  end

  def tokens(token_string)
    rough_list = token_string.split(" ")
    operation_list = []
    rough_list.each do |entry|
      if /\d/ =~ entry
        operation_list << entry.to_f
      else
        operation_list << entry.to_sym
      end
    end
    operation_list
  end

  def evaluate(string)
    operation_list = tokens(string)
    operation_list.each do |entry|
      if (entry.is_a? Integer) || (entry.is_a? Float)
        push(entry)
      elsif entry == :+
        plus
      elsif entry == :-
        minus
      elsif entry == :*
        times
      elsif entry == :/
        divide
      end
    end
    @value
  end
end