class Fixnum

  def in_words

    return 'zero' if self == 0 

    # No more special cases! No more returns!

    numString = ''  # This is the string we will return.

    onesPlace = ['one',     'two',       'three',    'four',     'five',
                 'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                 'sixty',   'seventy',   'eighty',   'ninety']
    teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    # "left" is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now.
    # write and left... get it?  :)

    left  = self.to_s.gsub(/_/, '').to_i 
    write = left/1000000000000         # How many triillions left to write out?
    left  = left - write*1000000000000 # Subtract off those triillions.

    if write > 0
       trillions  = write.in_words
       numString = numString + trillions + ' trillion'
   
      if left > 0
         # So we don't write 'two hundredfifty-one'...
         numString = numString + ' '
      end
    end

    write = left/1000000000         # How many billions left to write out?
    left  = left - write*1000000000 # Subtract off those billions.

    if write > 0
      billions  = write.in_words
      numString = numString + billions + ' billion'
   
      if left > 0
        numString = numString + ' '
      end
    end

    write = left/1000000         # How many millions left to write out?
    left  = left - write*1000000 # Subtract off those millions.

    if write > 0
      # Now here's a really sly trick:
      millions  = write.in_words
      numString = numString + millions + ' million'
   
      if left > 0
        # So we don't write 'two hundredfifty-one'...
        numString = numString + ' '
      end
    end

    write = left/1000         # How many thoudsands left to write out?
    left  = left - write*1000 # Subtract off those thousands.

    if write > 0
      # Now here's a really sly trick:
      thousands  = write.in_words
      numString = numString + thousands + ' thousand'
   
      if left > 0
        # So we don't write 'two hundredfifty-one'...
        numString = numString + ' '
      end
    end

    write = left/100          # How many hundreds left to write out?
    left  = left - write*100  # Subtract off those hundreds.

    if write > 0
      # Now here's a really sly trick:
      hundreds  = write.in_words
      numString = numString + hundreds + ' hundred'

      if left > 0
        # So we don't write 'two hundredfifty-one'...
        numString = numString + ' '
      end
    end

    write = left/10          # How many tens left to write out?
    left  = left - write*10  # Subtract off those tens.

    if write > 0
      if ((write == 1) and (left > 0))
        # Since we can't write "tenty-two" instead of "twelve",
        # we have to make a special exception for these.
        numString = numString + teenagers[left-1]
        # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'. 

        # Since we took care of the digit in the ones place already,
        # we have nothing left to write.
        left = 0
      else
        numString = numString + tensPlace[write-1]
        # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
      end

      if left > 0
        # So we don't write 'sixtyfour'...
        numString = numString + ' '
      end
    end

    write = left  # How many ones left to write out?
    left  = 0     # Subtract off those ones.

    if write > 0
      numString = numString + onesPlace[write-1]
      # The "-1" is because onesPlace[3] is 'four', not 'three'.
    end

    # Now we just return "numString"...
    numString
  end
end