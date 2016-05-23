require 'pry'


class Dictionary

	attr_accessor :entries


	def initialize

		# create an empty hash
		@entries = {}

	end


	# add entries to the dictionary
	def add( hash )

		# determine if dealing with a hash or string which tells us if the keyword has no definition tied to it
		if hash.is_a?(String)
			@entries[ hash ] = nil

		else

			# with a keyword and definition, these values are added to the dictionary
			hash.each { | k, v |  @entries[ k ] = v	}

		end

	end




	def keywords

		# return the keys of the hash
		@entries.keys.sort


	end


	def include?( keyword )

		# use inlcude method to check for the given keyword
	  @entries.include?( keyword )


	end







	# find method - search for a specified word
	def find ( word )

		found = {}


		@entries.each { | k, v |
			if k[ 0...word.length ] == word
				found[ k ] = v
			end
			if word[0..1] == k[0..1]
				found[ k ] = v
			end
		}

		return found

	end

	# print the hash to pass test
	def printable

		@entries.sort.map { | k, v | "[#{ k }] \"#{ v }\""}.join("\n")


	end





end