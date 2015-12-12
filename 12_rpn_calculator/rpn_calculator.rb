class RPNCalculator
	def numeric?(num)  
        true if Float(num) rescue false
	end
		
	def initialize
	  @numbers = []
	end

	def push(num)
	  @numbers<<num
	end

	def plus
		second = @numbers.pop
		first = @numbers.pop
		
		if (!first.nil? && !second.nil?)
		    @numbers << first + second 
		else 
			raise Exception.new("calculator is empty")
		end	
	end
	
	def minus
	  second = @numbers.pop
	  first = @numbers.pop
	  if (!first.nil? && !second.nil?)
		    @numbers << first - second 
	  else 
			raise Exception.new("calculator is empty")
	  end	
	end

	def times
	  second = @numbers.pop
	  first = @numbers.pop
	  if (!first.nil? && !second.nil?)
		    @numbers << first * second 
	  else 
			raise Exception.new("calculator is empty")
	  end
	end
	
	def divide
	  second = @numbers.pop
	  first = @numbers.pop
	  if (!first.nil? && !second.nil?)
		    @numbers << first.to_f / second.to_f
	  else 
			raise Exception.new("calculator is empty")
	  end	
	end  

	def value
	  @numbers[-1]
	end

	def tokens(tokens)
	  tokens.split(" ").map {|item| numeric?(item)? item.to_i : item.to_sym	}
	end
    exp = ""
	def evaluate(string)
	  operators = "/%*-+"	
	  string = string.split(" ")
	  index = 0

	  while index < string.length
	  	 if operators.include?(string[index])
	  	 	exp  = "#{string[index - 2]}.to_f #{string[index]} #{string[index - 1]}.to_f"
	  	 	string[index - 2] = eval(exp).to_s
	  	 	string.delete_at(index)
            string.delete_at(index - 1)
            index = 0
         else 
            index += 1
         end 
      end
      string[0].to_f
    end  
end