# TDD
# temperature.rb
# Topics:
# * floating-point math
# * objects
# * constructors
# * class methods
# * factory methods
# * options hashes

class Temperature
  def intialize(options = {})
    @options = options
  end

  def in_farenheit
    # if (@options.key?(:f))
    #   @options[:f]
    # else
      ((@options[:f] * 9) / 5) + 32
    # end
  end

  def in_celsius
    # if (@options.key?(:f))
    #   @options[:f]
    # else
      ((@options[:c] - 32) * 5) / 9
    # end
  end

end