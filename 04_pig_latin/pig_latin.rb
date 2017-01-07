
VOWELS = ["a","e","i","o","u"]

def upcase?(string)
   return true if string.upcase == string
   return false
end

def match_case(new_str,old_str)

    new_str = new_str.split("")
    old_str = old_str.split("")

    old_str.each_with_index do |item,index| 
    	if upcase?(old_str[index])
    		new_str[index] = new_str[index].upcase
    	else
    	    new_str[index] = new_str[index].downcase
    	end
    end
    
    new_str.join("")
end

def translate_each_word(str)
	return str+"ay" if VOWELS.include?(str[0].downcase)

    if str[0,2].downcase == "qu"
        return match_case(str[2..-1]+"qu"+"ay",str)
    end 

    if !VOWELS.include?(str[0].downcase) && str[1,2].downcase == "qu"
    	curr_str = str[3..-1]+str[0]+"qu"+"ay"
        return match_case(curr_str,str)
    end
           
    if !VOWELS.include?(str[1].downcase)
        if !VOWELS.include?(str[2].downcase)
        	curr_str = str[3..-1]+str[0,3]+"ay"
	        return match_case(curr_str,str) 
	    end
	    curr_str = str[2..-1]+str[0,2]+"ay"
	    return match_case(curr_str,str)
    end
    curr_str =  str[1..-1]+str[0]+"ay"
	return match_case(curr_str,str)
end

def translate(this_str)	
	str = ""
	this_str.split(" ").each {|item| str += translate_each_word(item)+" "}
	str.chop
end