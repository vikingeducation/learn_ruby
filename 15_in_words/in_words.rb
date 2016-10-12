class Fixnum
  
  SUB_TEN = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
  SUB_TWENTY = {11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen"}
  TENS = {10=>"ten", 20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety"}
  
  DIGITS = SUB_TEN.merge(SUB_TWENTY).merge(TENS)
  
  VALUES = ['thousand', 'million', 'billion', 'trillion']
  
  def in_words
    if self.zero?
      return "zero"
    elsif DIGITS[self]
      return DIGITS[self]
    else
      return convert(self)
    end
  end
  
  
  def convert(number)
    first = three_digit_splitter(number)
    wanted_values = values_selection(first.length)

    output = first.map do |i|
    	current = wanted_values.shift
    	three_places(i,current) 
    end
    	
    output.reject { |i| i.empty? }.join(" ")
  end
  
    
  def three_places(n, current)
    output = []
  	
    a, b = n.divmod(100)
    
    unless a.zero?
	    output << DIGITS[a]
	    output << 'hundred'
    end
      
    if DIGITS[b]
      output << DIGITS[b]
    else
      tens, ones = b.divmod(10)
      tens *= 10  
    
      output << DIGITS[tens]
      output << DIGITS[ones]
    end
   
    output << current unless b.zero?
  
    output.compact!
    output.join(" ")
  end
    
    
  def three_digit_splitter(number)  
    reversed_string = number.to_s.reverse
    
    split_array = reversed_string.scan(/\d{3}|\d{2}|\d{1}/).reverse
    split_array.map! { |x| x.reverse.to_i }
  end
  
    
  def values_selection(size)
  	if size >= 2
  		VALUES[0..(size-2)].reverse
  	else
  		[]
  	end
  end   
  
  
end
