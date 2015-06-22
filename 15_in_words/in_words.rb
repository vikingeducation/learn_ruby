class Fixnum

  @@basics = {0 => 'nil',
              1 => 'one',
              2 => 'two',
              3 => 'three',
              4 => 'four',
              5 => 'five',
              6 => 'six',
              7 => 'seven',
              8 => 'eight',
              9 => 'nine',
              10 => 'ten',
              11 => 'eleven',
              12 => 'twelve',
              13 => 'thirteen',
              14 => 'fourteen',
              15 => 'fifteen',
              16 => 'sixteen',
              17 => 'seventeen',
              18 => 'eighteen',
              19 => 'nineteen',
              20 => 'twenty',
              30 => 'thirty',
              40 => 'forty',
              50 => 'fifty',
              60 => 'sixty',
              70 => 'seventy',
              80 => 'eighty',
              90 => 'ninety'}

  @@num_increments = {100 => 'hundred',
                      1_000 => 'thousand',
                      1_000_000 => 'million',
                      1_000_000_000 => 'billion',
                      1_000_000_000_000 => 'trillion'}


  def in_words
    num = self
    words = []

    if num == 0
      words << 'zero'
    elsif num < 1_000
      words << hundreds_or_less(num)

    elsif num >= 1_000 #limitations: does not process #'s > trillions

      three_digit_chunks = increments(num)
      chunk_num = (three_digit_chunks.length) -1
      three_digit_chunks.each do |chunk| #array of three digit translations
        base = 1000
        if chunk != 0
          words << hundreds_or_less(chunk)
          base **= chunk_num
          words << @@num_increments[base]
        end

        chunk_num -= 1
      end

    else
      "cannot process"
    end
    words -= [nil] if num > 0
    words.join (" ")
  end


  def increments(num) #split number into 3digit chunks
    three_digits=[]

    while num >= 1000   #checks if more than 3 digits long
      three_digits << num % 1000  #adds last 3 digits of number
      num /= 1000
    end

    three_digits << num

    three_digits.reverse
  end

  def hundreds_or_less(num)
    if num < 10
      single_digits(num)

    elsif num < 100
      tens (num)

    elsif num % 100 == 0
      "#{single_digits(num/100)} hundred"

    else
      words = [single_digits(num/100), "hundred", tens(num % 100)].join(" ")
    end
  end

  def single_digits(num)
    @@basics[num]
  end

  def tens(num)
    if num < 20 || num % 10 == 0
      @@basics[num]
    else
      @@basics[num / 10 * 10] + " " + single_digits(num % 10)
    end
  end


end

puts 10_000_001.in_words