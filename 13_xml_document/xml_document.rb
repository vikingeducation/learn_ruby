# 13. XML Document

class XmlDocument

	def initialize(indent=false)
		@indent = indent
		@indent_level = 0
	end

	def method_missing(tag, *attribs, &block)
		# Sets attributes depending on number of args
		attributes = attribs[0] || {}

		# instantiate empty string to receive input
		string = ""
		# initial indenting (standard 2 spaces)
		string << ("  " * @indent_level) if @indent
		string << "<#{tag}"
		attributes.each_pair do |key, value|
			string << " #{key}='#{value}'"
		end

		if block # was passed into method
			string << ">"
			string << "\n" if @indent
			@indent_level += 1
			string << yield # to the block
			@indent_level -= 1
			string << ("  " * @indent_level) if @indent
			string << "</#{tag}>"
			string << "\n" if @indent
		else
			string << "/>"
			string << "\n" if @indent
		end

		string
	end
end