class Temperature

	def initialize(temp={})
		
		@temp_type = temp.has_key?(:f)? "f" : "c"
		@temp = temp[:"#{@temp_type}"]
	end
	
	def in_fahrenheit
		
		if @temp_type == "f"
		   @temp
		else
			(@temp * 1.8 + 32).round(1)
        end
	end

	def in_celsius
		
		if @temp_type == "f"
		   ((@temp - 32) / 1.8).round(1)
		else
			@temp
		end
	end

	def self.from_celsius(temp)
		self.new(:c=>temp)
	end

	def self.from_fahrenheit(temp)
		self.new(:f=>temp)
	end	
end	

class Celsius < Temperature
    def initialize(temp)
        @temp_type = "c"
        @temp = temp
    end	
end

class Fahrenheit < Temperature
    def initialize(temp)
        @temp_type = "f"
        @temp = temp
    end	
end 			
		      	
