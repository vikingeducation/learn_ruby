require 'pry'


class Dictionary

	attr_accessor :entries


	def initialize

		@entries = {}

	end



	def add( hash )

		if hash == nil
			return
		else
			hash.each { | k, v | @entries[ k ] = v }
		end

	end




	def keywords

		@entries.keys


	end


end