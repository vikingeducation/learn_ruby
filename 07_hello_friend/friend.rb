class Friend

	def greeting(name = nil)
		return "Hello!" if !name
		"Hello, " + name + "!"
	end

end