class RPNCalculator 

	attr_accessor :value

	def initialize
		@stack = []
		@value = 0
		@count = -1
	end

	def push(n)
		@count = -1
		@stack << n
	end

	def plus
		raise "calculator is empty" if @stack.empty?
		@value += @stack[@count]
		@count -= 1
		@value += @stack[@count] if @stack[@count]
		@count -= 1
	end

	def minus 
		raise "calculator is empty" if @stack.empty?
		@value = @stack[-2] - @stack[-1]
		@count -= 2
	end

	def divide
		raise "calculator is empty" if @stack.empty?		
		@stack.map! {|n| n.to_f}
		@value += @stack[-2] / @stack[-1]
		@count -= 2
	end

	def times
		raise "calculator is empty" if @stack.empty?	
		if @value == 0
			@count -= 2
			@value = @stack[-1] * @stack[-2]
		else
			@value *= @stack[@count] 
		end
	end

	def tokens(str)
		slots = str.split(' ')
		slots.map! do |slot|
			if Array('1'..'100').include? slot 
				slot.to_i
			else
				slot.to_sym
			end
		end
	end

	def evaluate(str)
		@stack = []	
		@value = 0
		@count = -1
		items = str.split(' ')
		sub_val = 0
		items.each do |item|
			#binding.pry
			if Array("1".."100").include?(item)
				@stack.push(item.to_i) #stack ends up with all values
			elsif item == "*" 
				self.times
			elsif item == "+"
				self.plus
			elsif item == "-"
				#sub_val = @value
				if items.length < 4
					self.minus 
				else
					sub_val = @stack[-2] - @stack[-1]
				end
			elsif item == "/"
				if items.length < 4
					self.divide		
				else
					@value /= sub_val
				end
			end
		end
		@value
	end

end	