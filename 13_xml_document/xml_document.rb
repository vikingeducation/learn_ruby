
require 'pry'

class XmlDocument

	attr_accessor :xml

	def initialize

		@xml = xml

	end



	def hello( hash = {} )


		if hash.empty?
			"<hello/>"
		else

			"<hello #{hash.map { | k, v | k }.join}" + "=" + "'#{hash.map { | k , v | v }.join}'/>"
		end

	end




	def method_missing(m, *args)

		"<#{ m }/>"

	end

end