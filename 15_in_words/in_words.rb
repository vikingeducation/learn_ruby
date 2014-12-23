class Fixnum

  @@zero_to_nineteen = [nil,"one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

  @@by_tens = [nil,nil,"twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

  @@segments = [
    { name: "trillion", value: 1_000_000_000_000 },
    { name: "billion", value: 1_000_000_000 },
    { name: "million", value: 1_000_000 },
    { name: "thousand", value: 1_000 },
    { name: nil, value: 1}
  ]

  def in_words 
    if self == 0
      return "zero"
    end

    number = self
    words = []
    @@segments.each do |segment|
      words += segment_handler(number, segment[:name], segment[:value])
      number = reducer(number, segment[:value])
    end
    words.compact.join(" ")
  end

  def segment_handler(number, name, value)
    three_digit_number = number / value
    words = handle_three_digits(three_digit_number)
    if three_digit_number > 0
      words << name
    end
    words.compact
  end

  def reducer(number, value)
    three_digit_number = number / value
    number - three_digit_number * value
  end

  def handle_three_digits(three_digit_number)
    hundreds_digit = three_digit_number / 100
    two_digit_remainder = three_digit_number - hundreds_digit * 100
    words = [@@zero_to_nineteen[hundreds_digit]]
    if hundreds_digit > 0
      words << "hundred"
    end
    words += handle_two_digits(two_digit_remainder)
    words.compact
  end

  def handle_two_digits(two_digit_number)
    if two_digit_number < 20
      [@@zero_to_nineteen[two_digit_number]]
    else
      twenty_to_ninety_nine(two_digit_number)
    end
  end

  def twenty_to_ninety_nine(two_digit_number)
    tens_digit = two_digit_number / 10
    ones_digit = two_digit_number - tens_digit * 10
    [@@by_tens[tens_digit],@@zero_to_nineteen[ones_digit]].compact
  end

end