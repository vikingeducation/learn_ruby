class Fixnum
  require 'to_words'
  def in_words
    namehash ={
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
      1 => "one"
      }
      str = ""
      notself = self
      running = true
        while running == true
          if self == 0
            return "zero"
          elsif notself == 0
            return str.strip  
          elsif notself < 10 
            str += namehash[notself]
            notself = 0
          elsif notself < 21
            str += namehash[notself]
            notself = 0
          elsif notself < 100
            if notself % 10 == 0
              str += namehash[notself]
              notself = 0
            else
              num = notself
              while num % 10 != 0
                num -= 1
              end
              str += namehash[num] + " " + namehash[notself-num]
              notself = 0
            end
          else
            length = notself.to_s.size - 1
            print length
            firstdigl = notself.to_s.chars.first(2)
            firstdig = firstdigl.shift
            seconddig = firstdigl.shift
            if seconddig == 0 
              str += namehash[(firstdig+seconddig).to_i]
            else
              str += namehash[(firstdig).to_i]
            end
            str += " " + namehash[10**length] + " "
            notself = notself - firstdig.to_i * 10**length
          end  
        end
      
    end
end