class Friend
	def greeting(friend = nil)
		return "Hello!" if friend == nil
		"Hello, #{friend}!"
	end
end