# # Topics
#
# * strings and numbers
# * modules
# * reopening classes
#
# # Extending a built-in class
#
# To make this test pass you'll need to extend a built-in class. You'll see that we're creating a new spec for 'Fixnum' -- this isn't a new class you'll be building, but instead it is a built-in class you will extend.
# TDD

class Fixnum

  # res = ""

  def in_words
    if(self<10)
      single_dig(self)
    elsif(self < 20)
      teens(self)
    elsif(self < 100)
      tens(self)
    elsif (self < 1000)
      hundreds(self)
    elsif (self < 1000000)
      thousands(self)
    elsif (self < 1_000_000_000)
      millions(self)
    end

  end

  def single_dig(n)
    case n
    when 0 
      "zero"
    when 1 
      "one"
    when 2 
      "two"
    when 3 
      "three"
    when 4 
      "four"
    when 5 
      "five"
    when 6 
      "six"
    when 7 
      "seven"
    when 8 
      "eight"
    when 9
      "nine"
    end
  end


  def teens(n)
    case n
      when 10
        "ten"
      when 11
        "eleven"
      when 12 
        "twelve"
      when 13 
        "thirteen"
      when 14 
      "fourteen"
      when 15 
        "fifteen"
      when 16 
        "sixteen"
      when 17 
        "seventeen"
      when 18 
        "eighteen"
      when 19 
        "nineteen"
    end
  end

  def tens(n)

    remainder = n%10  
    n -= remainder
    res = ""
    
    case n
      when 20
        res = "twenty"
      when 30
        res = "thirty"
      when 40 
        res = "forty"
      when 50 
        res = "fifty"
      when 60 
        res = "sixty"
      when 70 
        res = "seventy"
      when 80 
        res = "eighty"
      when 90
        res = "ninety"
    end

    # puts "#{res} ten result"
  
    if (remainder!=0)
      res.concat(" " + single_dig(remainder)) 
    end 

    return res
  end

   def hundreds(n)
    hundred = "hundred"
    remainder = n%100

    # Get how many hundreds first
    i = single_dig(n/100).concat(" " + hundred)

    # Then utilise the tens and teens functions
    if ((remainder != 0) && (remainder < 20))
      j = teens(remainder)
    else
      j = tens(remainder)
    end
  return i.concat(" " + j).strip
  end

  def thousands(n)
    thousand = "thousand"
    remainder = n%1000
    divide_1000 = n/1000
    
    # Get how many thousands first
    if (remainder == 0)
      i = single_dig(divide_1000).concat(" " + thousand)
    elsif((remainder !=0) && (divide_1000 < 20))
      i = teens(divide_1000).concat(" " + thousand)
    elsif((remainder !=0) && (divide_1000 < 100))
      i = tens(divide_1000).concat(" " + thousand)
    end

    # Then utilise the 100s function to do the rest
    if(remainder != 0)
      j = hundreds(remainder)
    else
      j = ""
    end

    return i.concat(" " + j).strip
  end

  def millions(n)
    million = "million"
    remainder = n%1000000
    divide_mill = n/1000000

    remainder_1000 = n%1000
    remainder_100 = n%1000
    
    # Get how many millions first
    if (remainder == 0)
      i = single_dig(divide_mill).concat(" " + million)
      puts "#{i} single"
    elsif((remainder !=0) && (divide_mill < 20))
      i = teens(divide_mill).concat(" " + million)
      puts "#{i} tens"
    elsif((remainder !=0) && (divide_mill < 100))
      i = tens(divide_mill).concat(" " + million)
    end

    # Then utilise the 1000s function to do the rest
    if(remainder != 0)
      j = thousands(remainder)
    else
      j = ""
    end

    return i.concat(" " + j).strip
  end

  
end