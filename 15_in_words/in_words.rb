class Fixnum
  @@zero_to_nineteen = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

  @@by_tens = [nil,nil,"twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

  def in_words
    if self == 0
      return "zero"
    end
    words = []
    words += three_digit_handler(self)
    words.join(" ")
  end

  def three_digit_handler(three_digit_number)
    words = []
    hundreds_digit = three_digit_number / 100
    two_digit_remainder = three_digit_number - hundreds_digit * 100
    if hundreds_digit > 0
      words << @@zero_to_nineteen[hundreds_digit]
      words << "hundred"
    end
    if two_digit_remainder > 0
      words += two_digit_handler(two_digit_remainder)
    end
    words
  end

  def two_digit_handler(two_digit_number)
    if two_digit_number < 20
      [@@zero_to_nineteen[two_digit_number]]
    else
      twenty_to_ninety_nine(two_digit_number)
    end
  end

  def twenty_to_ninety_nine(two_digit_number)
    tens_digit = two_digit_number / 10
    ones_digit = two_digit_number - tens_digit * 10
    words = [@@by_tens[tens_digit]]
    if ones_digit > 0
      words << @@zero_to_nineteen[ones_digit]
    end
    words
  end


end