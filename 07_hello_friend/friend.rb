class Friend
	def greeting (string = "")
		(string.size > 0) ? "Hello, #{string}!"  : "Hello!" 
	end
end