class ArrayExtensions
	Array.class_eval do
		def sum
			self.reduce(0, :+)
		end

		def square
			self.map { |i| i * i }
		end

		def square!
			self.map! { |i| i * i }
		end
	end
end