class Fixnum

  def in_words
    #quick check for zero saves trouble later
    return "zero" if self == 0 
    
      
    singles = {0=>"", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 
      5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    teens = {10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen",
      14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen",
      18=>"eighteen", 19=>"nineteen"}
    tens = {"2"=>"twenty", "3"=>"thirty", "4"=>"forty", "5"=>"fifty", 
      "6"=>"sixty", "7"=>"seventy", "8"=>"eighty", "9"=>"ninety"}
      
    periods = {0=>"hundred", 1=>"thousand", 2=>"million", 3=>"billion", 4=>"trillion"}
      
    #set up the vars
    result = ''
    string = self.to_s
    array = string.split('')
    #pad the number with 0s
    padding = array.length%3 == 0 ? 0 : 3-(array.length%3)
    padding.times do
      array.unshift "0"
    end
    #helper blocks to translate tens and hundreds
    ten_it = lambda do |tens_array|
      case tens_array[0]
      when "1"
        return teens[tens_array.join('').to_i]
      when "0"
        return singles[tens_array[1].to_i]
      else
        ten_result = "#{tens[tens_array[0]]}" 
        if tens_array[1] != "0"
          ten_result += " #{singles[(tens_array[1].to_i)]}"
        end
        return ten_result
      end      
    end
    hund_it = lambda do |hund_ray|
      if hund_ray[0] != "0"
        hund_result = "#{singles[(hund_ray[0].to_i)]} hundred"
        if hund_ray[1..2].join('') != "00"
          hund_result += ' '
        end
      else
        hund_result = ""
      end
      if hund_ray[1..2].join('') != "00"
        hund_result += "#{ten_it.call(hund_ray[1..2])}"
      end
      return hund_result
    end
    #iterate through periods
    copy = array.dup
    i = 0
    while i < (copy.length/3) do
      #grab the three digits from this period
      current_n = []
      3.times { current_n.unshift(array.pop) }
      answer = hund_it.call(current_n)
      #building the resulting string
      if i == 0
        result = "#{answer}"
      elsif answer != ''
        result = "#{answer} #{periods[i]} " + result
      end
      #trim whitespaces
      result.chop! if result[-1] == ' '
      i += 1
    end 
    result
  end

end