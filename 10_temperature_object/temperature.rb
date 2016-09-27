# Did not know what an options was or how to implement it. Found the use case on stack overflow and was able to implement it here. STill a little confusing but I get the general idea to have the option to use a has as an argument in your fuction. I was also able to re-use code from the previous temperature section. 
class Temperature
	attr_accessor :f, :c

	def initialize (options={})   #Utilized options hash for fahrenheit/celsius methods
		@f = options[:f]
		@c = options[:c]

		if f
			@c = Temperature.ftoc(@f)   #Converts fahrenheit to celsius using the Temperature.ftoc. Reused  
		else
			@f = Temperature.ctof(@c)   #Converts celcius to fahrenheit using the Temperature.ctof. Reused
		end
	end

	def in_fahrenheit
		@f
	end
  
	def in_celsius
		@c
	end
  
  # method to convert fahrenheit to celsius where 1 degree F is 5/9 of 1 degree C. Re-used this code from the first exercise. Took some trial and error to get *self to work but was able to implement. I understand it's useful when there are instance methods, class methods and variables in order to distinguish your class method. Still not 100% clear on it but makes sense in this example. 
  def self.ftoc(f)
    (f-32) * (5.0/9) 
  end
  
  # method to convert celcius to fahrenheit
  def self.ctof(c)
    (c * (9/5.0)) + 32
  end
  
  # Factory Methods
  def self.from_fahrenheit(temp)
    self.new(:f => temp)          #called on the Temperature class
  end
  
  def self.from_celsius(temp)
    self.new(:c => temp)          #called on the Temperature class
  end
end

class Fahrenheit < Temperature    #Fahrenheit subclass

	def initialize(temp)
		@f = temp
    @c = Temperature.ftoc(@f) 
	end
end

class Celsius < Temperature      #Celsius subclass

	def initialize(temp)
		@c = temp
    @f = Temperature.ctof(@c) 
	end

end