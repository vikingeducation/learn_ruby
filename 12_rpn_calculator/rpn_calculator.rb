require 'pry'

class RPNCalculator

	attr_accessor :number_bank

	def initialize
		@number_bank = []
	end

	def push(number)
		@number_bank << number
	end

	def plus
		if @number_bank.empty?
			fail
		else
			@number_bank << (@number_bank.delete_at(-2) + @number_bank.pop)
		end
	end

	def minus
		if @number_bank.empty?
			fail
		else
			@number_bank << (@number_bank.delete_at(-2) - @number_bank.pop)
		end
	end

	def divide
		if @number_bank.empty?
			fail
		else
			@number_bank << (@number_bank.delete_at(-2) / @number_bank.pop.to_f)
		end
	end

	def times
		if @number_bank.empty?
			fail
		else
			@number_bank << (@number_bank.delete_at(-2) * @number_bank.pop)
		end
	end

	def value
		@number_bank[-1]
	end

	def fail
		begin
			raise Exception.new("calculator is empty")
		end
	end


end