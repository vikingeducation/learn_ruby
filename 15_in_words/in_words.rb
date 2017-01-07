class Fixnum

  def in_words
    num_to_words = {
      1000000000000 => "trillion",
      1000000000 => "billion",
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one",
      0 => "zero"
    }
    
    str = ""

    if self<20
      str += "#{num_to_words[self]}"
    elsif self>=20 && self<100
      str += "#{num_to_words[self - self%10]}"
      str += " " + (self%10).in_words if self%10 != 0
    elsif self>=100 && self<1000
      str += "#{num_to_words[(self-self%100)/100]}" + " " + "#{num_to_words[100]}" 
      str += " " + (self%100).in_words if self%100 != 0
    elsif self.to_s.length > 3
      num = self #using a placeholder/copy so we dont change the original number

      while num.to_s.length > 3 do
        #getting the unit (thousands, billions, trillions, etc.)
        num_trailing_digits = num.to_s.length-1
        extra = num_trailing_digits%3
        num_zeros = num_trailing_digits - extra 
        unit = ("1" + "0"*num_zeros).to_i

        
        str += (num/unit).in_words + " " + num_to_words[unit] + " "

        #truncating the already "translated" part of the number
        # 111,123 -> 123
        num = num%unit #num.to_s[extra, num_zeros].to_i
      end

      str += num.in_words if num != 0

      #when the digits of num falls into the hundreds

    end

    str.strip
  end



end