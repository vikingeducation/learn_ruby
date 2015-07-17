class RPNCalculator

  attr_accessor :plus, :value, :index

  def initialize
    @array = []
    # @value = 0
  end

  def push(number)
    @array.push(number)
    self.index = @array.length
  end

  def enough_nums
    if @array.length < 1
      raise "calculator is empty"
    end
  end

  def plus
    sum = 0
    enough_nums()

    sum = @array[self.index-1] + @array[self.index-2]

    @array.pop
    @array.pop
    @array.push(sum)
    self.index = @array.length
    self.value = sum
  end

  def minus
    sum = 0
    enough_nums()

    sum = @array[self.index - 2] - @array[self.index - 1]
    @array.pop
    @array.pop
    @array.push(sum)
    self.index = @array.length
    self.value = sum
  end

  def divide
    sum = 0
    enough_nums()

    sum = @array[self.index - 2].to_f / @array[self.index - 1]
    @array.pop
    @array.pop
    @array.push(sum)
    self.index = @array.length
    self.value = sum
  end

  def times 
    sum = 0 
    enough_nums()

    sum = @array[self.index - 2] * @array[self.index - 1]
    @array.pop
    @array.pop
    @array.push(sum)
    self.index = @array.length
    self.value = sum
  end

  def tokens(str)

    str.split.map! { |t| t[/\d/] ? t.to_i : t.to_sym }
  end

  def evaluate(str)
    array = tokens(str)
    num_array = []
    sym_array =[]

    array.each do |num|
      if num.is_a? Integer
        num_array.push(num)
      else
        sym_array.push(num)
        # print "here??"
      end
    end

    num_index = num_array.length
    sym_index = 0

    num_array.each do
      if num_array.length< 1
        raise "calculator is empty"
      end

      if sym_array[sym_index].to_s == "+"
        print "plus!"
        sum = 0

        sum = num_array[num_index-1] + num_array[num_index-2]

        num_array.pop
        num_array.pop
        num_array.push(sum)
        num_index = num_array.length
        sym_index +=1

        self.value = sum
        sum[0]
      end

      if sym_array[sym_index].to_s == "-"
        print "minus"

        sum = 0

        sum = num_array[num_index-2] - num_array[num_index-1]

        num_array.pop
        num_array.pop
        num_array.push(sum)
        num_index = num_array.length
        sym_index +=1

        self.value = sum
        sum[0]
      end

      if sym_array[sym_index].to_s == "*"
        print "times"

        sum = 0

        sum = num_array[num_index-2] * num_array[num_index-1]

        num_array.pop
        num_array.pop
        num_array.push(sum)
        num_index = num_array.length
        sym_index +=1

        self.value = sum
        sum[0]
      end

      if sym_array[sym_index].to_s == "/"
        print "divide"

        sum = 0

        sum = num_array[num_index-2] / num_array[num_index-1]

        num_array.pop
        num_array.pop
        num_array.push(sum)
        num_index = num_array.length
        sym_index +=1

        self.value = sum
        sum
      end
      print "#{sum.class}sum\n"
      sum
    end
  end


end


# attr_accessor :calculator
calculator = RPNCalculator.new
calculator.evaluate("1 2 3 * +")
calculator.evaluate("4 5 -")
calculator.evaluate("2 3 /")
calculator.evaluate("1 2 3 * + 4 5 - /")







