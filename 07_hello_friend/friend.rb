# 07. Hello Friend

class Friend

	def greeting(arg=nil)
		if arg.nil?
			"Hello!"
		else
			"Hello, #{arg}!"
		end
	end
end