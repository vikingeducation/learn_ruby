class Fixnum

#   def in_words(int)
#     numbers_to_name = {
#         1000000 => "million", 1000 => "thousand", 100 => "hundred", 90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty",50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty",19=>"nineteen", 18=>"eighteen", 17=>"seventeen", 16=>"sixteen", 15=>"fifteen", 14=>"fourteen", 13=>"thirteen",12=>"twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight",7 => "seven",6 => "six", 5 => "five", 4 => "four", 3 => "three",
#         2 => "two", 1 => "one", 0 =>"zero" }
    
#     str = ""
#     numbers_to_name.each do |num, name|
#       if int == 0
#         str += "zero"
#       elsif int.to_s.length == 1 && int/num > 0
#         return str + "#{name}"      
#       elsif int < 100 && int/num > 0
#         return str + "#{name}" if int%num == 0
#         return str + "#{name} " + in_words(int%num)
#       elsif int/num > 0
#         return str + in_words(int/num) + " #{name} " + in_words(int%num)
#       end
#     end
#   end
# end

  def in_words
    words_hash = {1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine", 10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen", 17=>"seventeen", 18=>"eighteen",19=>"nineteen", 20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}
    scale_hash= { 1000000 => "million", 1000 => "thousand", 100 => "hundred"}

    str = ""
    if self == 0
      str+="zero"
    elsif words_hash.has_key?(self) 
      str += words_hash[self]
    else
      words_hash.each do |num, name|
        
      if self < 100 && self/num > 0  
        if self%num == 0
          str = "#{name}"
        else
          str = words_hash[self-self%10] +" "+ words_hash[self%10]
        end
      
      elsif self >=100 && self < 1000
        str = words_hash[self/100]
        if self == 100
          str = "one hundred"
        elsif scale_hash.has_key?(100%self)
           str += " " +scale_hash[100%self]
           if 100%self != 100
            print "hey"
            str += " "+words_hash[100%self-self%10] + " "+words_hash[self%10]
          end
        end
      end
    end
  str
  end

end

           
    # elsif self <= 99
    #   return [words_hash[self - self%10],words_hash[self%10]].join(" ")
    # elsif self> 99 && self=<999

        
#     end
#   end
# end







