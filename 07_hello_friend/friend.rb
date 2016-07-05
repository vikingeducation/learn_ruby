class Friend
	def greeting(name="")
		return "Hello!" if name.empty?
		return "Hello, #{name}!"
	end
end