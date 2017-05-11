class RPNCalculator < Array

  attr_accessor :calculator

  def initialize
    @calculator = []
  end

  def push(num)
    @calculator << num
  end

  def plus
    if @calculator.empty?
      raise "calculator is empty"
    else
      @answer = @calculator[-2] + @calculator[-1]
      @calculator.pop
      @calculator[-1] = @answer
      @answer
    end

  end

  def value
    @answer
  end

  def minus
    if @calculator.empty?
      raise "calculator is empty"
    else
      @answer = @calculator[0] - @calculator[1]
      @calculator.pop
      @calculator[-1] = @answer
      @answer
    end
  end

  def divide
    if @calculator.empty?
      raise "calculator is empty"
    else
      @answer = (@calculator[-2].to_f / @calculator[-1].to_f).round(2)
      @calculator.pop
      @calculator[-1] = @answer
      @answer
    end
  end

  def times
    if @calculator.empty?
      raise "calculator is empty"
    else
      @answer = (@calculator[-2].to_f * @calculator[-1].to_f).round(2)
      @calculator.pop
      @calculator[-1] = @answer
      @answer
    end
  end


  def tokens(string)
    arr = string.split(" ")
    new_array = []
    arr.each do |item|
      if ["+", "-", "*", "/"].include?(item)
        new_array << item.to_sym
      else
        new_array << item.to_i
      end
    end
    new_array
  end

  def evaluate(string)
    arr = string.split(" ")
    num_array = []
    operator_array = []
    arr.each do |item|
      if ["+", "-", "*", "/"].include?(item)
        operator_array << item.to_sym
      else
        num_array << item.to_f
      end
    end
    if num_array.length <= 2
      (num_array[0].send(operator_array[0], num_array[1])).round(18)
    elsif num_array.length == 3
      (num_array[1].send(operator_array[0],num_array[2])).send(operator_array[1], num_array[0])
    else
      (num_array[1].send(operator_array[0], num_array[2]).send(operator_array[1], num_array[0])).send(operator_array[3],(num_array[-2].send(operator_array[2], num_array[-1])))
    end
  end



end
