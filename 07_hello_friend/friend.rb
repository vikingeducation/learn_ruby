#friend.rb


# create class Friend
class Friend

	# greeting method defaults to ""
	def greeting(name = "")

		# returns without greeting if no parameter passed
		if name == ""

			"Hello!"

		else

			# insert parameter is passed into greeting
			"Hello, #{name}!"

		end

	end


end


