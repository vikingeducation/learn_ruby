def echo(echo)
	"#{echo}"
end	

def shout(echo)
	"#{echo}".upcase
end	

def repeat(echo,num = 2)
	((echo<<" ") * num).chop
end	

def start_of_word(str,num)
	str[0,num]
end	

def first_word(str)
	str.split(" ")[0]
end	

def titleize(str)
     
	str = str.split(" ")
	capitalized_str = Array.new

	str.each_with_index do |item,index|

	    if index == (str.length - 1) || index == 0
            capitalized_str << item.capitalize
        elsif index == 1 && item.length >= 4
	    	capitalized_str << item.capitalize	
	    elsif item.length > 4
	        capitalized_str << item.capitalize
	    else
	    	capitalized_str << item
	    end	
	end
    
	capitalized_str.join(" ")
end