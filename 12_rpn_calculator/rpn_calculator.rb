class RPNCalculator
attr_accessor :array, :value

def initialize
  @array=[]
  @value
  @new_array
end

def value
  @value
end

def push number
  @array << number
end

def plus
  plus_result = 0
  exception
  2.times do
    plus_result += @array.pop
  end
  @array.push(plus_result)
  @value = plus_result
end

def minus
  exception

  minus1 = @array.pop
  minus2 = @array.pop
  minus_result = minus2-minus1
  @array.push(minus_result)
  @value = minus_result
end

def divide
  exception

  divide1 = @array.pop.to_f
  divide2 = @array.pop.to_f
  divide_result = divide2/divide1
  @array.push(divide_result.to_f)
  @value = divide_result.to_f
end

def times
  exception

  time1 = @array.pop
  time2 = @array.pop
  time_result = time2*time1
  @array.push(time_result)
  @value = time_result
end

def exception
  raise "calculator is empty" if @array.empty?
end

def tokens string
  string = string.split(" ")
  string.length.times do |i|
  if string[i].to_i == 0
     string[i] = string[i].to_sym
   else
     string[i] = string[i].to_i
   end
 end
 string
end

def evaluate string
  subarray = []
  @array = tokens string

  @array.length.times do |i|
    unless @array[i].class == String && @array[i+1].class == Symbol
      subarray << @array[i]
    end
  end
  

end
