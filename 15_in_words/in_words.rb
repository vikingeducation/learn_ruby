class Fixnum



  def in_words
    @@result = ''
    tril = 1_000_000_000_000
    bil = 1_000_000_000
    mil = 1_000_000

    #get values for each group of 1000
    trillions = self / tril
    billions = self % tril / bil
    millions = self % tril % bil / mil
    thousands = self % tril % bil % mil / 1000
    ones = self % tril % bil % mil % 1000


    if self ==0
       #special case for zero
      return 'zero'
    #append numerical label to values
    else
      if trillions > 0
        parse(trillions)
        @@result << ' trillion '

      end
      if billions > 0
        parse(billions)
        @@result << ' billion '

      end
      if millions > 0
        parse(millions)
        @@result << ' million '

      end
      if thousands > 0
        parse(thousands)
        @@result << ' thousand '
      end
      if ones > 0
        parse(ones)
      end
    end

    @@result.strip

  end

  #break apart numbers for conversion
  def parse(num)
    num_hundreds = num / 100 
    ones = num % 100
    tens_place = (ones/10)*10

    if num_hundreds > 0
      @@result << convert(num_hundreds)
      @@result << " hundred "
    end

    if ones > 0
      if (ones <=20) || (ones % 10 ==0)
        @@result << convert(ones)
      else
        @@result << convert(tens_place)
        @@result << " "
        @@result << convert(ones%10)
      end
    end
  end

  #convert the number to values
  def convert(num)

    case num
    when 1 then 'one'
    when 2 then 'two'
    when 3 then 'three'
    when 4 then 'four'
    when 5 then 'five'
    when 6 then 'six'
    when 7 then 'seven'
    when 8 then 'eight'
    when 9 then 'nine'
    when 10 then 'ten'
    when 11 then 'eleven'
    when 12 then 'twelve'
    when 13 then 'thirteen'
    when 14 then 'fourteen'
    when 15 then 'fifteen'
    when 16 then 'sixteen'
    when 17 then 'seventeen'
    when 18 then 'eighteen'
    when 19 then 'nineteen'
    when 20 then 'twenty'
    when 30 then 'thirty'
    when 40 then 'forty'
    when 50 then 'fifty'
    when 60 then 'sixty'
    when 70 then 'seventy'
    when 80 then 'eighty'
    when 90 then 'ninety'
    end
  end

end
