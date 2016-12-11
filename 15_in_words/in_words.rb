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

# Words in numbers 

class Fixnum

  def in_words
    if(self<10)
      single_dig(self)
    elsif(self < 20)
      teens(self)
    elsif(self < 100)
      tens(self)
    elsif (self < 1000)
      hundreds(self)
    elsif (self < 1_000_000)
      thousands(self)
    elsif (self < 1_000_000_000)
      millions(self)
    elsif(self < 1_000_000_000_000)
      billions(self)
    elsif(self < 1_000_000_000_000_000)
      trillions(self)
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
  
    # Then deal with the remainder
    if (remainder!=0)
      res.concat(" " + single_dig(remainder)) 
    end 

    return res
  end

   def hundreds(n)
    hundred = "hundred"
    remainder = n%100
    divide_100 = n/100

    # puts "#{divide_100} result of dividing by a hundred"
    # puts "#{remainder} the remainder"

    # Get how many hundreds first
    if (remainder == 0 || (divide_100 != 0 && divide_100 < 10))
      i = single_dig(divide_100).concat(" " + hundred)
    else 
      i = ""
    end
    
    # i = single_dig(n/100).concat(" " + hundred)

    # Then deal with the remainder
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

    # puts "#{divide_1000} result of dividing by a thousand"
    # puts "#{remainder} the remainder"
    
    # Get how many thousands first
    if (remainder == 0 || divide_1000 < 10)
      i = single_dig(divide_1000).concat(" " + thousand)
    elsif((remainder !=0) && (divide_1000 < 20))
      i = teens(divide_1000).concat(" " + thousand)
    elsif((remainder !=0) && (divide_1000 < 100))
      i = tens(divide_1000).concat(" " + thousand)
    elsif((remainder !=0) && (divide_1000 < 1000))
      i = hundreds(divide_1000).concat(" " + thousand)
    end

    # puts "#{i} i in the thousands function"

    # Then deal with the remainder
    if((remainder != 0) && (divide_1000 < 10))
      j = single_dig(remainder)
    elsif((remainder != 0) && (divide_1000 < 20))
      j = teens(remainder)
    elsif(remainder != 0)
      j = hundreds(remainder)
    else
      j = ""
    end

     # puts "#{j} j in the thousands function"

    return i.concat(" " + j).strip
  end


  def millions(n)
    million = "million"
    remainder = n%1_000_000
    divide_mill = n/1_000_000

    # puts "#{divide_mill} result of dividing by a billion"
    # puts "#{remainder} the remainder"

    # Get how many millions first
    if (remainder == 0 || divide_mill < 10)
      i = single_dig(divide_mill).concat(" " + million)
      # puts "#{i} single"
    elsif((remainder !=0) && (divide_mill < 20))
      i = teens(divide_mill).concat(" " + million)
      # puts "#{i} tens"
    elsif((remainder !=0) && (divide_mill < 100))
      i = tens(divide_mill).concat(" " + million)
    elsif((remainder !=0) && (divide_mill < 1000))
      i = hundreds(divide_mill).concat(" " + million)
    elsif((remainder !=0) && (divide_mill < 1_000_000))
      i = thousands(divide_mill).concat(" " + million)
    end


    # puts "#{i} i in the millions function"

    # Deal with the remainder
    if((remainder != 0) && (remainder < 10))
      j = single_dig(remainder)
    elsif((remainder != 0) && (remainder < 20))
      j = teens(remainder)
    elsif(remainder != 0)
      j = thousands(remainder)
    else
      j = ""
    end

    return i.concat(" " + j).strip
  end

  def billions(n)
    billion = "billion"
    remainder = n%1_000_000_000
    divide_bill = n/1_000_000_000

    # puts "#{divide_bill} result of dividing by a billion"
    # puts "#{remainder} the remainder"

    # Get how many billions first
    if (remainder == 0 || divide_bill < 10)
      i = single_dig(divide_bill).concat(" " + billion)
      # puts "#{i} single"
    elsif((remainder !=0) && (divide_bill < 20))
      i = teens(divide_bill).concat(" " + billion)
      # puts "#{i} tens"
    elsif((remainder !=0) && (divide_bill < 100))
      i = tens(divide_bill).concat(" " + billion)
    elsif((remainder !=0) && (divide_bill < 1000))
      i = hundreds(divide_bill).concat(" " + billion)
    end

    # Deal with the remainder
    if((remainder != 0) && (remainder < 10))
      j = single_dig(remainder)
      # puts "reached the single dig case"
    elsif((remainder != 0) && (remainder < 20))
      j = teens(remainder)
      # puts "reached the teens case"
    elsif(remainder != 0)
      j = millions(remainder)
      # puts "reached the thousands case"
    else
      j = ""
    end

    # puts "#{j} the result of j"

    return i.concat(" " + j).strip
  end

  def trillions(n)
    trillion = "trillion"
    remainder = n%1_000_000_000_000
    divide_trill = n/1_000_000_000_000

    # puts "#{divide_trill} result of dividing by a trillion"
    # puts "#{remainder} the remainder"

    # Get how many trillions first
    if (remainder == 0 || divide_trill < 10)
      i = single_dig(divide_trill).concat(" " + trillion)
      # puts "#{i} single"
    elsif((remainder !=0) && (divide_trill < 20))
      i = teens(divide_trill).concat(" " + trillion)
      # puts "#{i} tens"
    elsif((remainder !=0) && (divide_trill < 100))
      i = tens(divide_trill).concat(" " + trillion)
    end

    # Deal with the remainder
    if((remainder != 0) && (remainder < 10))
      j = single_dig(remainder)
      # puts "reached the single dig case"
    elsif((remainder != 0) && (remainder < 20))
      j = teens(remainder)
      # puts "reached the teens case"
    elsif(remainder != 0)
      j = billions(remainder)
      # puts "reached the thousands case"
    else
      j = ""
    end

    # puts "#{j} the result of j"

    return i.concat(" " + j).strip
  end 
end