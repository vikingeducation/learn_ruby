class XmlDocument
	attr_accessor :indent
	attr_accessor :depth

	def initialize(indent=false)
		@indent = indent
		@depth = 0
	end

	def to_attributes(h)
		attributes = ''
		if h.length
			h.each do |key, value|
				attributes += %Q{ #{key}='#{value}'}
			end
		end
		attributes
	end

	def render(tag, attributes, text)
		i = (@indent) ? "  " * (@depth + 1) : ''
		j = (@indent) ? "  " * @depth : ''
		n = (@indent) ? "\n" : ''
		output = ''
		if text
			output += "<#{tag}#{attributes}>#{n}"
			output += "#{i}#{text}"
			output += "#{j}</#{tag}>#{n}"
		else
			output += "<#{tag}#{attributes}/>#{n}"
		end
		output
	end

	def method_missing(sym, args={})
		tag = sym.to_s
		attributes = to_attributes(args)
		text= nil
		@depth += 1
		if block_given?
			text = yield
		end
		@depth -= 1
		render(tag, attributes, text)
	end
end