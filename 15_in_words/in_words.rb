class Fixnum

  @@single_words = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  @@teen_words = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  @@tens_words = ['error_zero','error_ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  def in_words
    n = self
    
    if n <1000
      return three_digits(n)
    elsif n <1000000
      thousands(n)
    elsif n <1000000000
      millions(n)
    elsif n<1000000000000
      billions(n)
    else
      trillions(n)
    end

  end

  def trillions (x)
    trillones = ""

    if x/1000000000000 !=0
      trillones = %Q[#{three_digits(x/1000000000000)} trillion]
    end

    if x%1000000000000 !=0
      if !trillones.empty?
        trillones << " "
      end
      trillones << billions(x%1000000000000)
    end

    return trillones


  end

  def billions (x)
    billones = ""

    if x/1000000000 !=0
      billones = %Q[#{three_digits(x/1000000000)} billion]
    end

    if x%1000000000 !=0
      if !billones.empty?
        billones << " "
      end
      billones << millions(x%1000000000)
    end

    return billones

  end

  def millions (x)
    millones = ""

    if x/1000000 !=0
    millones = %Q[#{three_digits(x/1000000)} million]
    end

    if x%1000000 !=0
      if !millones.empty?
        millones << " "
      end
      millones << thousands(x%1000000)
    end

    return millones

  end

  def thousands (x)
    millares =""

    if x/1000 !=0
    millares << %Q[#{three_digits(x/1000)} thousand]
    end

    puts millares

    if x%1000 != 0
      if !millares.empty?
        millares << " "
      end
      millares << three_digits(x%1000)
    end

    return millares

  end

  def three_digits (y)
    if y < 10
      return singles(y)
    elsif y <100
      return tens(y)
    else
      return hundreds(y)
    end
  end


  def hundreds (x)
    centenas = %Q[#{singles(x/100)} hundred]

    if x%100 !=0
      centenas << " "
      centenas << tens(x%100)
    end

    return centenas

  end


  def tens (x)
    decenas=""
    
    if x <20
      decenas = @@teen_words[x-10]

    else
      decenas << @@tens_words[x/10]
      if x%10 != 0
        decenas << " "
        decenas << singles(x%10)
      end

    end
    return decenas
  end


  def singles(x)
    return @@single_words[x]
  end


end
