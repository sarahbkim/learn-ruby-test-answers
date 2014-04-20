class XmlDocument
	def initialize(indent=false)
		@indent = indent 
		@indent_level = 0 
	end

	def method_missing(method, *args, &block) 
		attributes = args[0] || {}
		xml = ""
		xml << ("  " * @indent_level) if @indent
		xml << "<#{method}"
		
		attributes.each_pair do |k, v|
			xml << " #{k}='#{v}'"
		end

		if block
			xml << ">"
			xml << "\n" if @indent
			@indent_level += 1
			xml << yield
			@indent_level -= 1 
			xml << ("  " * @indent_level) if @indent
			xml << "</#{method}>"
			xml << "\n" if @indent
		else 
			xml << "/>"
			xml << "\n" if @indent
		end
		xml 

	end


end