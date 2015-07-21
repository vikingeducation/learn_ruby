class RPNCalculator
  attr_accessor :data_array, :data_result

  def initialize
    @data_array = []
    @data_result = 0
  end

  def push(num)

      @data_array << num

  end

  def times
    check_data
    m1 = @data_array.pop
    m2 = @data_array.pop
    mu = m1 * m2
    @data_array << mu
    @data_result = mu
  end

  def plus
    check_data
    a1 = @data_array.pop
    a2 = @data_array.pop
    aa = a1 + a2
    @data_array << aa
    @data_result = aa
  end

  def minus
    check_data
    a1 = @data_array.pop
    a2 = @data_array.pop
    aa = a2 - a1
    @data_array << aa
    @data_result = aa
  end

  def divide
    check_data
    a1 = @data_array.pop
    a2 = @data_array.pop
    aa = a2.to_f / a1.to_f
    @data_array << aa
    @data_result = aa
  end

  def value
    @data_result
  end

  def check_data
   if @data_array.empty?
     raise "calculator is empty"
    end
  end

  def tokens(str)
    str.split(" ").map do |item|
      if [ "1","2","3","4","5","6","7","8","9","0" ].include?(item)
        item.to_i
      else
        item.to_sym
      end
    end
  end

  def evaluate(str)
    arr = tokens(str)
    arr.each do |element|
      case(element)
      when(:*)
        times
      when(:/)
        divide
      when(:+)
        plus
      when(:-)
        minus
      else
        @data_array << element
      end
    end
    @data_result
  end

end
