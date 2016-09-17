class Friend
	def greeting(name='')
		name = ", #{name}" unless name.empty?
		"Hello#{name}!"
	end
end


