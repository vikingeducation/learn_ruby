class Fixnum
  
  DIGITS = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen", 20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety"}
  ONES = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
  TEENS = {11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen"}
  TENS = {10=>"ten", 20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety"}

  def in_words

    #as_string
    as = self.to_s
  
    #divvys up number into threes 
    y = as.reverse
    z = y.scan(/\d{3}|\d{2}|\d{1}/).reverse
    z = z.map { |x| x.reverse }
    
  
    ans = []
    
    if self == 0
      ans << 'zero'
      
    elsif self < 1000
      ans << triple_gem(self)
    
    elsif self < 1000000
      z.each_with_index { |x,i| 
      ans << triple_gem(x.to_i) unless x.to_i == 0 ; puts triple_gem(x.to_i) 
      ans << 'thousand' if i == 0 && x.to_i != 0
      }
      puts z.inspect
      
    elsif self < 100000000
      z.each_with_index { |x,i| 
      ans << triple_gem(x.to_i) unless x.to_i == 0 
      ans << 'million' if i == 0
      ans << 'thousand' if i == 1 if i == 0 && x.to_i != 0
      }
    
    elsif self < 10000000000
      z.each_with_index { |x,i| 
      ans << triple_gem(x.to_i) unless x.to_i == 0 
      ans << 'billion' if i == 0
      ans << 'million' if i == 1 && x.to_i != 0
      ans << 'thousand' if i == 2 && x.to_i != 0
      }
      
    elsif self < 10000000000000
      z.each_with_index { |x,i| 
      ans << triple_gem(x.to_i) unless x.to_i == 0
      ans << 'trillion' if i == 0
      ans << 'billion' if i == 1 && x.to_i != 0
      ans << 'million' if i == 2 && x.to_i != 0
      ans << 'thousand' if i == 3 && x.to_i != 0
      }      
   
    else
      "Too high of a number!"
   
    end
    
    return ans.join(" ").strip

  end


  def sub_hundred num
    output = []
    
    if DIGITS[num]
      output << DIGITS[num]
    else
      ten_greater = (num / 10.0).to_s
      tens = ten_greater[0]
      ones = ten_greater[2]
      output << DIGITS[tens.to_i * 10]
      output << DIGITS[ones.to_i]  
      
    end

    return output.join(" ") 
    
  end 
  

    
    def super_hundred num
      output = []
      temp = num.to_s[0].to_i
      output << ONES[temp]
      output << 'hundred'
   
      return output
    end #hundo end
    
      
  def triple_gem number
    
    output = []
    
    
    if number < 100
      output << sub_hundred(number) unless sub_hundred(number) == 0
    else
      output << super_hundred(number)
      output << sub_hundred(number.to_s[1..-1].to_i) unless number.to_s[1..-1].to_i == 0
    end
      
      output.join(" ")
  end
end
