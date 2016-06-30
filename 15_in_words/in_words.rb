class Fixnum
  @@ones = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
  @@teens = ['','eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  @@tens = ['', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  @@decimals = ["", "thousand", "million", "billion", "trillion"]
  # splits input number into array of all numbers within it
  # ex:1234 => [1000, 200, 30, 4]
  def helping(x)
    numbers =  []
    num = x
    while num > 0 
      if num < 20
        numbers.push(num)
        break
      else 
        #print num, " - ", num.to_s[1..-1].to_i, " = ", num - num.to_s[1..-1].to_i, "\n"

        numbers.push(num - num.to_s[1..-1].to_i)
        break if num.to_s[1..-1].to_i == 0
        num = num.to_s[1..-1].to_i
      end
    end 
    return numbers
  end

  # => array that splits into 3 digit numbers so that it can be classified by 10 ** 3 places 
  #ex: 123_456_789 => [123, 456, 789]
  def splitting(x)
    numbers = []
    num = x
    while num != 0
      #3 digits at a time
      if num < 999
        numbers.push(num)
        break if num.to_s[-3..-1].to_i == 0
      else 
        numbers.push(num.to_s[-3..-1].to_i)
        num = num.to_s[0..-4].to_i
      end
    end
    return numbers
  end

  #basic reading num=>string function for any number 1-100
  def read_number(x)
    if x <= 10
        return @@ones[x] + " "
      ##teens
    elsif x < 20 && x > 10
      return @@teens[x % 10] + " "
    ##tens
    elsif x >= 20 && x < 100
      return @@tens[x / 10] + " "
    elsif x.to_s.length == 3
      return @@ones[x/(10**(x.to_s.length-1))] + " hundred "
    end
    return ""
  end

  def in_words
    numbers = []
    str = ""
    
    num = self 
    if num == 0 #base case
      return 'zero'
    end

    if num.to_s.length > 3
      numbers = splitting(num)
      #nice ruby func - basically rev_each_with_index haha :P
      #splits complicated numbers into easier numbers (creating arrays inside array and then traversing/reading inside out)
      numbers.to_enum.with_index.reverse_each do |a_number, index| 
        temp_str = ""
        #solving a complex number (ex:767) inside the array
        temp = helping(a_number)
        temp.each { |ez_num| temp_str << read_number(ez_num) }
        str << temp_str + @@decimals[index] + " " unless a_number == 0
      end
      print "\n", numbers
    else
      numbers = helping(num)
      numbers.each { |a_number| str << read_number(a_number)}
      print "\n", numbers
    end
    return str.strip
  end
end