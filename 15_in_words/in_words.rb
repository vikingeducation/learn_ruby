class Fixnum
  
  def in_words
    if self >= 0 && self < 100 
      read_less_than_one_hundred(self)
    elsif self >= 100 && self < 1000
      read_hundreds(self)
    elsif self >= 1000 && self < 1000000
      read_thousands(self)
    elsif self >= 1000000 && self < 1000000000
      read_millions(self)
    elsif self >= 1000000000 && self < 1000000000000
      read_billions(self)
    elsif self >= 1000000000000 && self < 1000000000000000
      read_trillions(self)
    end   
  end

  def read_trillions(n)
    a = n/1000000000000
    b = n%1000000000000

    if a >= 100
      trillions = read_hundreds(a) + ' trillion'
    elsif a < 100
      trillions = read_less_than_one_hundred(a) + ' trillion'
    end

    if b >= 1000000000
      billions_or_less = ' ' + read_billions(b)
    elsif b >= 1000000
      billions_or_less = ' ' + read_millions(b)
    elsif b >= 1000 
      billions_or_less = ' ' + read_thousands(b)
    elsif b >= 100
      billions_or_less = ' ' + read_hundreds(b)
    elsif b < 100 && b != 0
      billions_or_less = ' ' + read_less_than_one_hundred(b)
    elsif b == 0
      billions_or_less = ''
    end

    trillions + billions_or_less
  end 

  def read_billions(n)
    a = n/1000000000
    b = n%1000000000

    if a >= 100
      billions = read_hundreds(a) + ' billion'
    elsif a < 100
      billions = read_less_than_one_hundred(a) + ' billion'
    end

    if b >= 1000000
      millions_or_less = ' ' + read_millions(b)
    elsif b >= 1000 
      millions_or_less = ' ' + read_thousands(b)
    elsif b >= 100
      millions_or_less = ' ' + read_hundreds(b)
    elsif b < 100 && b != 0
      millions_or_less = ' ' + read_less_than_one_hundred(b)
    elsif b == 0
      millions_or_less = ''
    end

    billions + millions_or_less
  end

  def read_millions(n)
    a = n/1000000
    b = n%1000000

    if a >= 100
      millions = read_hundreds(a) + ' million'
    elsif a < 100
      millions = read_less_than_one_hundred(a) + ' million'
    end

    if b >= 1000 
      thousands_or_less = ' ' + read_thousands(b)
    elsif b >= 100
      thousands_or_less = ' ' + read_hundreds(b)
    elsif b < 100 && b != 0
      thousands_or_less = ' ' + read_less_than_one_hundred(b)
    elsif b == 0
      thousands_or_less = ''
    end

    millions + thousands_or_less
  end

  def read_thousands(n)
    if  n/1000 >= 100
      thousands = read_hundreds(n/1000) + ' thousand'
    elsif n/1000 < 100 
      thousands = read_less_than_one_hundred(n/1000) + ' thousand'
    end 

    if n%1000 >= 100
      hundreds_or_less = ' ' + read_hundreds(n%1000)
    elsif n%1000 < 100 && n%1000 != 0
      hundreds_or_less = ' ' + read_less_than_one_hundred(n%1000)
    elsif n%1000 == 0
      hundreds_or_less = ''
    end

    thousands + hundreds_or_less
  end

  def read_hundreds(n)
    ones =  ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    if n % 100 == 0
      ones[n/100] + ' hundred'
    else
      ones[n/100] + ' hundred ' + read_less_than_one_hundred(n % 100)
    end
  end

  def read_less_than_one_hundred(n)
    ones = ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    if n >= 0 && n < 10
      ones[n]
    elsif n >= 10 && n < 20
      teens[n-10]
    elsif n >= 20 && n < 100 && n % 10 == 0
      tens[n/10-2]
    elsif n < 100 && n % 10 != 0 
      tens[n/10-2] + ' ' + ones[n % 10]
    end
  end
end