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
    if number < 1
      result = "zero"
    elsif number < 20
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
    # Start with a blank string
    result = ""
    number = self
    number_string = number.to_s
    reverse_number_string = number_string.reverse

    hundreds_place = reverse_number_string.slice(0..2).reverse.to_i
    thousands_place = reverse_number_string.slice(3..5).reverse.to_i
    millions_place = reverse_number_string.slice(6..8).reverse.to_i
    billions_place = reverse_number_string.slice(9..11).reverse.to_i
    trillions_place = reverse_number_string.slice(12..14).reverse.to_i

    result << trillions(trillions_place)
    result << billions(billions_place)
    result << millions(millions_place)
    result << thousands(thousands_place)
    result << three_digit_name(hundreds_place)

    return result.strip
  end
end