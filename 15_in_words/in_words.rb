class Fixnum
  @@zero_to_nineteen = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

  @@by_tens = [nil,nil,"twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

  def in_words
    words = []
    if self < 100
      words += two_digit_handler(self)
    end
    words.join(" ")
  end

  def two_digit_handler(two_digit_number)
    words = []
    if two_digit_number < 20
      words << @@zero_to_nineteen[two_digit_number]
    else
      words << twenty_to_ninety_nine(two_digit_number)
    end
    words
  end

  def twenty_to_ninety_nine(two_digit_number)
    tens_digit = two_digit_number / 10
    ones_digit = two_digit_number - tens_digit * 10
    words = []
    words << @@by_tens[tens_digit]
    if ones_digit > 0
      words << @@zero_to_nineteen[ones_digit]
    end
    words
  end


end