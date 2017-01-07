class Friend
	def greeting(name=nil)
		if name == nil
			"Hello!"
		else	
			"Hello, #{name}!"
		end	
	end	
end	