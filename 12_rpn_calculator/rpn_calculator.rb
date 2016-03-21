class RPNCalculator
  def initialize
    @number_array = []
    @tally
  end
  def push(rpn_string)
    #rpn_string.split(' ').each do |num|
      @number_array.push(rpn_string)
    #end
  end

  def plus
    length = @number_array.size
    check_for_problem(length)
    @tally = @number_array[length - 2] + @number_array[length-1]
    @number_array.pop
    @number_array[length-2]=@tally
  end

  def minus
    length = @number_array.size
    check_for_problem(length)
    @tally = @number_array[length - 2] - @number_array[length-1]
    @number_array.pop
    @number_array[length-2]=@tally
  end

  def divide
    length = @number_array.size
    check_for_problem(length)
    @tally = (@number_array[length - 2] * 1.0) / (@number_array[length-1] * 1.0)
    @number_array.pop
    @number_array[length-2]=@tally
  end

  def times
    length = @number_array.size
    check_for_problem(length)
    @tally = (@number_array[length - 2] * 1.0) * (@number_array[length-1] * 1.0)
    @number_array.pop
    @number_array[length-2]=@tally
  end

  def value
    @tally
  end

  def raise_error
    "calculator is empty"
  end
  def raise_not_recognized
    "Sorry, this character is not recognized"
  end
  def check_for_problem(length)
    if length < 2 || nil
      raise raise_error
    end
  end
  
  #checks against regex to see if value is numeric
  def is_numeric?(obj) 
   obj.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
  end

  def is_algabreic?(obj)
    obj.match(/[\+\-\\\*]/)
  end

  def tokens(string="")
    tokenized = []
    string.split(" ").each do |item|
      if is_numeric?
        tokenized.push(item.to_i)
      elsif is_algabreic?
        tokenized.push(item.to_sym)
      else
        raise_not_recognized
      end
    end
  end
end