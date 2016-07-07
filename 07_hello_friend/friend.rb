class Friend
	def greeting(someone = nil)
		return "Hello!" unless someone
		"Hello, #{someone}!"
	end
end