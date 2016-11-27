class RPNCalculator
  def initialize
    @num_arr = []
  end

  def push n
    @num_arr << n
  end

  def calculator_is_empty? arr
    true if arr.length < 2
  end

  def value
    @num_arr[-1]
    # @num_arr.inject(0) { |sum, each_number| sum + each_number }
  end

  def plus
    raise "calculator is empty" if calculator_is_empty? @num_arr
    @num_arr[-2] = @num_arr[-2] + @num_arr[-1]
    @num_arr.pop
  end


  def minus
    raise "calculator is empty" if calculator_is_empty? @num_arr
    @num_arr[-2] = @num_arr[-2] - @num_arr[-1]
    @num_arr.pop
  end

  def divide
    raise "calculator is empty" if calculator_is_empty? @num_arr
    @num_arr[-2] = @num_arr[-2].to_f / @num_arr[-1].to_f
    @num_arr.pop
  end

  def times
    raise "calculator is empty" if calculator_is_empty? @num_arr
    @num_arr[-2] = @num_arr[-2].to_f * @num_arr[-1].to_f
    @num_arr.pop
  end

  def tokens input
    # binding.pry
    result = []
    input.split(" ").each do |value|
      if /\d/ =~ value
        result << value.to_i
      else
        result << value.to_sym
      end
    end
    result
  end

  def operation_match op
    # binding.pry
    case op
    when :*
      times
    when :-
      minus
    when :/
      divide
    when :+
      plus
    else
      "Wrong pattern"
    end
  end

  def evaluate input
    # binding.pry
    input_str = tokens input
    input_str.each do |x|
      if /\d/ =~ x.to_s
        push x
      else
        operation_match x
      end
    end
    value
  end

end
