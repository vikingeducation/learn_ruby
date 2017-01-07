class Friend
	def greeting(*person)
		return "Hello!" if person.empty?
		"Hello, #{person[0]}!"
	end
end