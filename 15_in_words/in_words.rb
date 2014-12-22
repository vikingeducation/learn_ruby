class Fixnum
  @@zero_to_nineteen = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

  @@by_tens = [nil,nil,"twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

  def in_words
    if self < 100
      two_digit_handler(self)
    else
      hundreds_digit = self / 100
      tens_digit = (self - hundreds_digit * 100) / 10
      ones_digit = self - tens_digit * 10
      words = []
      if hundreds_digit != 0
        words << @@zero_to_nineteen[hundreds_digit]
        words << "hundred"
      end

      if tens_digit > 1
        words << @@by_tens[tens_digit]
      end

      if ones_digit != 0
        words << @@zero_to_nineteen[ones_digit]
      end
      words.join(" ")
    end
  end

  def two_digit_handler(two_digit_number)
    if two_digit_number < 20
      @@zero_to_nineteen[two_digit_number]
    else
      tens_digit = two_digit_number / 10
      ones_digit = two_digit_number - tens_digit * 10
      words = []
    end
  end
end