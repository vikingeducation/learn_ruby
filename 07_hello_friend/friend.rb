class Friend
	def greeting(someone = nil)
		return "Hello!" if someone.nil?
		"Hello, #{someone}!"
	end
end