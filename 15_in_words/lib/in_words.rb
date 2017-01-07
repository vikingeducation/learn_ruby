#note: these hashes are constants. (all caps)
require 'byebug'
 ONES =  {
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

TEENS = {      
  19 =>"nineteen",
  18 =>"eighteen",
  17 =>"seventeen", 
  16 =>"sixteen",
  15 =>"fifteen",
  14 =>"fourteen",
  13 =>"thirteen",              
  12 =>"twelve",
  11 => "eleven",
  10 => "ten",

}

TENS = {
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  
}

MAGS = {
  1000000000000 => "trillion",
  1000000000 => "billion",
  1000000 => "million",
  1000 => "thousand",
  100 => "hundred",
}
      
class Fixnum 
  def in_words
    if self < 10
      ONES[self]

    elsif self < 20
      TEENS[self]

    elsif self < 100
      return TENS[self] if self % 10 == 0
      TENS[(self/10) * 10] + " " + ONES[self %  10]
    

    else
      magnitude = MAGS.keys.select { |mag| mag <= self }.max
      
      mag_in_words = (self / magnitude).in_words + " " + MAGS[magnitude] 

      if self % magnitude != 0
        mag_in_words + " " + (self % magnitude).in_words
      else
        mag_in_words
      end
    end

  end
end

 