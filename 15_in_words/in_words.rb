class Fixnum
  def in_words
   
    to_nineteen = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    the_tens = ["zero", "ten" , "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    number = self

    case number

    when 0..19

      return to_nineteen[number]

    when 20..99

     if number % 10 == 0 
       return the_tens [number/10] 
     else
      return "#{the_tens[number/10]} #{to_nineteen[number%10]}"
    end

  when 100..999

    if number % 100 == 0 
     return "#{to_nineteen [number/100]} hundred" 
   else
     return "#{to_nineteen [number/100]} hundred " + (number % 100).in_words
   end

 when 1000..999999

  if number % 1000 == 0 

    return "#{to_nineteen [number/1000]} thousand" 

  else

   return (number / 1000).in_words + " thousand " + (number % 1000).in_words
 end

when 1000000..999999999
  
  if  number % 1000000 == 0 

    return "#{to_nineteen [number/1000000]} million" 

  else

    return (number / 1000000).in_words + " million " + (number % 1000000).in_words 

  end

when 1000000000..999999999999

  if number % 1000000000 == 0
    return "#{to_nineteen[number/1000000000]} billion"
  else
    return (number / 1000000000).in_words + " billion " + (number % 1000000000).in_words
  end

when 1000000000000..999999999999999

  if number % 1000000000000 == 0

    return "#{to_nineteen[number/1000000000000]} trillion"

  else

    return (number / 1000000000000).in_words + " trillion " + (number % 1000000000000).in_words
    
  end


end 
end

end