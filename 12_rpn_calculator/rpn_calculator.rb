# 12. Russian Polish Notation Calculator

class RPNCalculator

	def initialize
		@array = []
	end

	def push(arg)
		@array.push(arg)
	end

	def plus
		raise "calculator is empty" if @array.empty?
		push(pop + pop)
	end

	def value
		@array[-1]
	end

	def minus
		raise "calculator is empty" if @array.empty?
		val = pop
		push(pop - val)
	end

	def divide
		raise "calculator is empty" if @array.empty?
		val = pop
		push(pop.to_f / val.to_f)
	end

	def times
		raise "calculator is empty" if @array.empty?
		push(pop * pop)
	end

	def pop
		raise "calculator is empty" if @array.empty?
		@array.pop
	end

	def tokens(arg)
		arg.split(' ').map do |t|
			toks = %w{* - + /}
			if toks.include?(t)
				t.to_sym
			else
				t.to_i
			end
		end
	end

	def evaluate(arg)
		tokens(arg).each do |x|
			case x
			
			when :+
				plus

			when :-
				minus

			when :*
				times

			when :/
				divide

			else
				push(x)

			end
		end	
		value
	end


end