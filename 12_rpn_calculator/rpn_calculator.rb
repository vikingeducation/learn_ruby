class RPNCalculator

	# Class variables
	@@operations = ["+", "-", "*", "/"]

	# Constructor
	def initialize
		@calc_array = []
	end

	# Collect pushed values
	def push(val)
		@calc_array.push(val.to_f) # Convert ints to floats
	end

	# Collect operations (as symbols rather than strings - symbols take up less memory)
	def plus
		raise "calculator is empty" if @calc_array.length < 2
		@calc_array.push(:+)
	end
	def minus
		raise "calculator is empty" if @calc_array.length < 2
		@calc_array.push(:-)
	end
	def times
		raise "calculator is empty" if @calc_array.length < 2
		@calc_array.push(:*)
	end
	def divide
		raise "calculator is empty" if @calc_array.length < 2
		@calc_array.push(:/)
	end

	# Calculate result from @calc_array
	def value
		@calc_array_copy = @calc_array.dup
		@calc_array_copy.each_with_index do |val, i|
			# Look for operation
			if ([:+, :-, :*, :/].include?(val))
				# Collect operation & two values before it in array "main"
				main = [@calc_array_copy[i-2], @calc_array_copy[i-1], val]
				# Collect everything in front of & behind "main" in separate arrays
				front = i < 3 ? [] : @calc_array_copy[0..i-3]
				back = i == @calc_array_copy.length - 1 ? [] : @calc_array_copy[i+1..-1]
				# Rebuild @calc_array_copy after solving "main"
				@calc_array_copy = front + solve(main) + back
				# Set new value for @calc_array
				@calc_array = @calc_array_copy.dup
				# Recursion - run "value" again if an  operation is still present within @calc_array
				value if @calc_array.include?(:+) || @calc_array.include?(:-) || @calc_array.include?(:*) || @calc_array.include?(:/) 
				# Return last value in array
				return @calc_array_copy[-1]
			end
		end
	end

	# Tokenize a string expression - convert string argument to @calc_array
	def tokens(expression)
		@calc_array = []
		expression.split("").each do |char|
			@calc_array << char.to_f if /[0-9]/.match(char)
			@calc_array << :+ if /[+]/.match(char)
			@calc_array << :- if /[-]/.match(char)
			@calc_array << :* if /[*]/.match(char)
			@calc_array << :/ if /[\/]/.match(char)
		end
		@calc_array
	end

	# Evaluate a string expression
	def evaluate(expression)
		# Convert string expression to @calc_array
		tokens(expression)
		# Get value from @calc_array
		value
	end

	# Everything below "private" cannot be accessed outside of class
	private

	# Solve operation in 3-part array form [m, n, op]
	def solve(arr) 
		case arr[2]
		when :+
			[arr[0] + arr[1]]
		when :-
			[arr[0] - arr[1]]
		when :*
			[arr[0] * arr[1]]
		when :/
			[arr[0] / arr[1]]
		else
			raise "Error: RPNCalculator method \"solve\""
		end
	end

end

