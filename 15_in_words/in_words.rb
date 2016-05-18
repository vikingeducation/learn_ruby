class Fixnum
  def in_words
    if self == 0
      return "zero"
    end

    #keeps track of the remainder after we strip off the highest section of the number
    remainder = self
    #our final result
    number_in_words = []

    if remainder >= 1_000_000_000_000
      number_in_words << "#{to_words(remainder/1_000_000_000_000)} trillion" if remainder/1_000_000_000_000!=0
      remainder %= 1_000_000_000_000
    end

    if remainder >= 1_000_000_000
      number_in_words << "#{to_words(remainder/1_000_000_000)} billion" if remainder/1_000_000_000!=0
      remainder %= 1_000_000_000
    end
    
    if remainder >= 1_000_000
      number_in_words << "#{to_words(remainder/1_000_000)} million" if remainder/1_000_000!=0
      remainder %= 1_000_000
    end
    
    if remainder >= 1_000
      number_in_words << "#{to_words(remainder/1000)} thousand" if remainder/1000!=0
      remainder %= 1_000
    end
    
    number_in_words << to_words(remainder) if remainder!=0
    
    number_in_words.join(" ")
  end

  def to_words(number)
    conversions = {0=>"", 1=>"one", 2=>'two',3=>'three', 4=>'four',5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen",20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}

    if number < 21 || (number%10 == 0  && number<100)
      conversions[number]
    elsif number < 100
      "#{to_words(number / 10 * 10)} #{to_words(number % 10)}"
    else
      number_in_words = "#{to_words(number/100)} hundred"
      number_in_words += " " if number%100 > 0
      number_in_words += to_words(number%100)
      number_in_words
    end
  end
end