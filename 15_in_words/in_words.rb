class Fixnum
  require 'to_words'
  def in_words
    namehash ={
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
          elsif 100 <= notself && notself < 1000
            notselftemp = notself
            while notselftemp %100 != 0
              notselftemp -= 1 
            end
            str += (notselftemp/100).in_words + " hundred "
            notself = notself - notselftemp
          else
            length = notself.to_s.length
            flength = notself.to_s.length
            while flength > 3 
              flength -= 3
            end 
            if flength == 1
              #this means we only care about the first digit for figuring out if we're a billion, ten billion, or a hundred billion
              str += notself.to_s.chars.first(1).join.to_i.in_words + " " + namehash[10**(length-1)] + " "
              notself = notself - (notself.to_s.chars.first(1).join.to_i * 10**(length-1))
            elsif  flength == 2
              #we care about the first two digits
              str += notself.to_s.chars.first(2).join.to_i.in_words + " " + namehash[10**(length-2)] + " "
              notself = notself - (notself.to_s.chars.first(2).join.to_i * 10**(length-2))
            else 
              #we care about the first three.
              str += notself.to_s.chars.first(3).join.to_i.in_words + " " + namehash[10**(length-3)] + " "
              notself = notself - (notself.to_s.chars.first(3).join.to_i * 10**(length-3)) 
            end
              

            # 1000 = ln4 thousand
            # 10000 = ln5 ten thousand
            # 100000 = ln6 hundred thousand
            # 1000000 = ln7 million
            # 10000000 = ln8 ten million
            # 100000000 = ln9 hundred million
            # 1000000000 = ln10 billion 
          end  
        end
      
    end
end