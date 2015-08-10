class RPNCalculator
	attr_accessor :stack
	attr_accessor :value

	def initialize
		clear
	end

	def clear
		@stack = []
		@value = 0
		self
	end

	def push(*args)
		args.each do |arg|
			@stack << arg.to_f
		end
		self
	end

	def operate
		length = @stack.length
		right = @stack.pop
		left = @stack.pop
		old_value = @value
		if length > 1
			@value = yield(left, right)
		elsif length > 0
			@value = yield(@value, right)
		else
			error_empty
		end
		@stack.push(@value)
	end

	def plus
		operate do |left, right|
			left + right
		end
		self
	end

	def minus
		operate do |left, right|
			left - right
		end
		self
	end

	def divide
		operate do |left, right|
			left / right
		end
		self
	end

	def times
		operate do |left, right|
			left * right
		end
		self
	end

	def tokens(string)
		string.split(' ').map do |token|
			if token.match(/\d/)
				token.to_i
			elsif ['+', '-', '*', '/'].include?(token)
				token.to_sym
			end
		end
	end

	def evaluate(string)
		tokens(string).each do |token|
			if token.to_s.match(/\d/)
				push(token)
			elsif [:+, :-, :*, :/].include?(token)
				case token
				when :+
					plus
				when :-
					minus
				when :*
					times
				when :/
					divide
				end
			end
		end
		value
	end

	private

		def error_empty
			raise "calculator is empty"
		end
end