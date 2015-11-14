class Friend
	def greeting(name = nil)
		return "Hello!" unless name
		return "Hello, #{name}!" if name
	end
end