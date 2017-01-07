module DigitsStrings
  #Initializing constants for the basic strings.
  Singles = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
  }

  Tens = {
    10 => "ten",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  Teens = {
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
  }

  #Translate numbers below 100.
  def singles_doubles(number)
    #Initialize variables for the digits.
    digits = number.to_s.length
    first_digit = number.to_s[0].to_i
    first_two = number.to_s[0,2].to_i
    first_three = number.to_s[0,3].to_i
    single_digit = Singles[first_digit]
    ten = Tens[first_two]
    teen = Teens[first_two]
    two_digits = Tens[%Q|#{first_digit}0|.to_i]
    two_digits += " " + Singles[number.to_s[1].to_i] unless number == 0


    #Conditionals for numbers 0 to 99.
    if number < 10
      single_digit
    elsif number < 20 && number > 10
      teen
    else
      number.to_s[1].to_i > 0 ? two_digits : ten
    end
  end

  def hundreds(number)
    hundred = singles_doubles(number.to_s[0].to_i)
    remaining = singles_doubles(number.to_s[1,number.to_s.length].to_i)


    output = %Q|#{hundred} hundred|
    if number.to_s[1,number.to_s.length].split("").all?{|digit| digit == "0"}
      output
    else
      output += %Q| #{remaining}|
    end
  end

  def thousands(number)
    #Conditionals to set the 'thousand' and 'remaining' variables.
    #Less than ten thousand.
    start_point = 0
    if number < 10000
      thousand = singles_doubles(number.to_s[0].to_i)
      start_point = 1
    #Less than hundred thousand.
    elsif number < 100000
      thousand = singles_doubles(number.to_s[0,2].to_i)
      start_point = 2
    #Less than a million.
    else
      thousand = hundreds(number.to_s[0,3].to_i)
      start_point = 3
    end

    #Do the rightmost digits form a number in the hundreds?
    right_most_digits = number.to_s[start_point,number.to_s.length].to_i
    if right_most_digits > 99
      remaining = hundreds(right_most_digits)
    else
      remaining = singles_doubles(right_most_digits)
    end


    output = %Q|#{thousand} thousand|
    if number.to_s[1,number.to_s.length].split("").all?{|digit| digit == "0"}
      output
    else
      output += %Q| #{remaining}|
    end
  end

  def millions(number)
    #Less than ten million.
    start_point = 0
    if number < 10000000
      million = singles_doubles(number.to_s[0].to_i)
      start_point = 1
    #Less than a hundred million
    elsif number < 100000000
      million = singles_doubles(number.to_s[0,2].to_i)
      start_point = 2
    #Less than a billion
    else
      million = hundreds(number.to_s[0,3].to_i)
      start_point = 3
    end

    #Do the rightmost digits form a number in the thousands?
    right_most_digits = number.to_s[start_point,number.to_s.length].to_i
    if right_most_digits > 999
      remaining = thousands(right_most_digits)
    elsif right_most_digits > 99
      remaining = hundreds(right_most_digits)
    else
      remaining = singles_doubles(right_most_digits)
    end


    output = %Q|#{million} million|
    if number.to_s[1,number.to_s.length].split("").all?{|digit| digit == "0"}
      output
    else
      output += %Q| #{remaining}|
    end
  end

  def billions(number)
    billion = (number/1000000000)
    right_most_digits = number.to_s[1,number.to_s.length].to_i
    %Q|#{billion.in_words} billion #{right_most_digits.in_words}|
  end

  def trillions(number)
    trillion = (number/1000000000000)
    billion = number.to_s[1,3].to_i
    million = number.to_s[4,number.to_s.length].to_i
    output = %Q|#{trillion.in_words} trillion|
    output += %Q| #{billion.in_words} billion| if billion > 0
    output += %Q| #{million.in_words}| if million > 0
    output
  end

  def in_words
    if self < 100
      singles_doubles(self)
    elsif self < 1000
      hundreds(self)
    elsif self < 1000000
      thousands(self)
    elsif self < 1000000000
      millions(self)
    elsif self < 1000000000000
      billions(self)
    elsif self < 1000000000000000
      trillions(self)
    end
  end
end


class Fixnum
  include DigitsStrings
end

class Bignum
  include DigitsStrings
end
