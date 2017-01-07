require 'pry'


class Array


	def sum

			self.reduce(0) { | r, e | r + e }

	end


	def square

		self.map { | num | num*num }

	end


	def square!

		self.map! { | num | num*num }

	end


end