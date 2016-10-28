class Fixnum

    @@number_names = {
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
      19 => "nineteen",
      18 => "eighteen",
      17 => "seventeen",
      16 => "sixteen",
      15 => "fifteen",
      14 => "fourteen",
      13 => "thirteen",
      12 => "twelve",
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
      0 => " "
    }

    pita_name = " "
    thousands_number = " "
    hundreds_number = " "
    tens_number = " "
    ones_number = " "

  def in_words

    #pita_name = ""


    if self == 0
      pita_name = "zero"

    elsif self % 10 == 0

      if self < 99
        pita_name = @@number_names[self]
      elsif self > 99 && self < 1000
        hundreds_prefix = self / 100
        pita_name = "#{@@number_names[hundreds_prefix]} #{@@number_names[100]}"
      elsif self > 999 && self < 1000000
        thousands_prefix = self / 1000
        pita_name = "#{@@number_names[thousands_prefix]} #{@@number_names[1000]}"
      end

    elsif self < 20
      pita_name = @@number_names[self]

    elsif self > 19 && self < 100 
      tens_number = calculate_tens_number(self)
      ones_number = calculate_ones_number(self)
      pita_name = tens_number + ones_number
      pita_name.strip!

    elsif self > 100 && self < 1000
      to_tens_number = self % 100
      hundreds_number = calculate_hundreds_number(self)
      tens_number = calculate_tens_number(to_tens_number)

      if to_tens_number < 20
        ones_number = @@number_names[0]
      else
        ones_number = calculate_ones_number(to_tens_number)
      end

      pita_name = hundreds_number + tens_number + ones_number
      pita_name.strip!

    elsif self > 1000 && self < 1000000
      #start with 132767
      hundreds_of_thousands_number = self / 1000              
      hundreds_num_prefix = hundreds_of_thousands_number / 100


      to_tens_number = hundreds_of_thousands_number % 100
      tens_number = calculate_tens_number(to_tens_number)
      to_ones_number = to_tens_number % 10
      ones_number = calculate_ones_number(to_ones_number)


      if hundreds_of_thousands_number.to_s.length < 3 
        thousands_number = tens_number + ones_number + "thousand "
      else
        thousands_number = @@number_names[hundreds_num_prefix] + "hundred " + tens_number + ones_number + "thousand "
      end



      hundreds_number = self % 1000                            
      hundreds_num_prefix = hundreds_number / 100                  
      to_tens_number = hundreds_number % 100                         
      tens_number = calculate_tens_number(to_tens_number)
      to_ones_number = to_tens_number % 10                           
      ones_number = calculate_ones_number(to_ones_number)

      rest_of_number = @@number_names[hundreds_num_prefix] + " hundred " + tens_number + ones_number + " "
      
      pita_name = thousands_number + rest_of_number
      pita_name.strip!

    else

      #I'll do the rest of this when I learn recursion :)
    end

  end


  def caclulate_thousands_number(num)
    thousands_num_prefix = num / 1000
    hundreds_num_prefix = thousands_num_prefix / 100


    #if thousands_num_prefix > 100
      hundreds_number = calculate_hundreds_number(thousands_num_prefix)
      tens_number = calculate_tens_number(hundreds_number)
      ones_num = calculate_ones_number(tens_number)
      thousands_number = hundreds_number + tens_number + ones_number + " thousand "
    #else

    thousands_number = "#{@@number_names[thousands_num_prefix]} thousand "
    return thousands_number
  end

  def calculate_hundreds_number(num)
    hundreds_num_prefix = num / 100
    hundreds_number = "#{@@number_names[hundreds_num_prefix]} hundred "
    return hundreds_number
  end

  def calculate_tens_number(num)
    if num > 19
      tens = (num / 10) * 10
      tens_number = "#{@@number_names[tens]} "
    else
      tens_number = "#{@@number_names[num]} "
    end
    return tens_number
  end

  def calculate_ones_number(num)
    if num > 10
      ones = num % 10
      ones_num = "#{@@number_names[ones]} "
    else
      ones_num = "#{@@number_names[num]} "
    end
    return ones_num
  end


end