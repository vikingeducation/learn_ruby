class Dictionary
  attr_accessor :options,:key,:value

  def initialize
      @option = {}
      @options = {}
  end

  def entries
    @options
  end

  def add add_stuff
    if add_stuff.class == String
    @option = {add_stuff => nil}
    @options.merge!(@option)
    else
      @option = add_stuff
      @options.merge!(@option)
    end

  end

  def keywords
    @options.keys.sort
  end

  def include? key
    keys = @options.keys
    keys.include? key
  end

  def prefix_match? input, key
      input_length = input.length
      input[0..(input_length-1)] == key[0..(input_length-1)]
    end

  def find input
    find_result ={}
    @options.each do |k, v|
      find_result[k] = v if prefix_match? input,k
    end
      find_result
  end

  def printable
     # binding.pry
     result = ""
     @options.keys.sort.each do |key|
       result << "[#{key}] \"#{@options[key]}\"\n"
     end
     result.chomp
   end


end
