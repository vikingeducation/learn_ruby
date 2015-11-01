class Fixnum
  @@number_names = [
    "",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen"
  ]

  @@tens_names = [
    "",
    "ten",
    "twenty",
    "thirty",
    "fourty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety"
  ]

  @@place_names = [
    "hundred",
    "thousand",
    "million",
    "billion",
    "trillion"
  ]
  
  def low_numbers number
    return "#{@@number_names[number]} "
  end

  def tens number
    return "#{@@tens_names[number]} "
  end

  def hundreds number
    return "#{@@number_names[number]} hundred "
  end

  def three_digit_name number
    result = ""
    if number < 20
      result << low_numbers(number)
    elsif number < 100
      result << tens(number.to_s[0].to_i)
      result << low_numbers(number.to_s[1].to_i)
    elsif number >= 100
      result << hundreds(number.to_s[0].to_i)
      result << tens(number.to_s[1].to_i)
      result << low_numbers(number.to_s[2].to_i)
    end
    return result
  end

  def thousands number
    return "#{three_digit_name(number)} thousand "
  end

  def millions number
    return "#{three_digit_name(number)} million "
  end

  def billions number
    return "#{three_digit_name(number)} billion "
  end

  def trillions number
    return "#{three_digit_name(number)} trillion "
  end

  def in_words
    # Use to parse place value
    number_string = self.to_s

    # Start with a blank string
    result = ""

    if self < 20
      
    elsif self < 100
      
    end


  end
end