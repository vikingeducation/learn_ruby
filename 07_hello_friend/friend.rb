class Friend
	def greeting name = ""
		if name.empty?
			"Hello!"
		else
			"Hello, #{name}!"
		end
	end

end