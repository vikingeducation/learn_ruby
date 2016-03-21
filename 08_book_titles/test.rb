def in_words
    digit = 20
    if digit > 19
      puts digit
      if digit % 10 != 0
        digit %= 10
        single_digits(digit)
      end
    elsif digit > 9
      teens(digit)
    else
      single_digits(digit)
    end
  end

  puts in_words