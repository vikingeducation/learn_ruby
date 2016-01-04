
Fixnum.class_eval do

    def in_words
        numbers_to_words = {
          1=> 'one',
          2=> 'two',
          3=> 'three',
          4=> 'four',
          5=> 'five',
          6=> 'six',
          7=> 'seven',
          8=> 'eight',
          9=> 'nine',
          10=> 'ten',
          11=> 'eleven',
          12=> 'twelve',
          13=> 'thirteen',
          14=> 'fourteen',
          15=> 'fifteen',
          16=> 'sixteen',
          17=> 'seventeen',
          18=> 'eighteen',
          19=> 'nineteen',
          20=> 'twenty',
          30=> 'thirty',
          40=> 'forty',
          50=> 'fifty',
          60=> 'sixty',
          70=> 'seventy',
          80=> 'eighty',
          90=> 'ninety'
        }

        number_fragments = {
          1000=> 'thousand',
          1000000=> 'million',
          1000000000=> 'billion',
          1000000000000=> 'trillion',
          1000000000000000=> 'quadrillion',
          1000000000000000000=> 'quintillion'
        }

        return 'negative ' << (-1 * self).in_words if self < 0
        return 'zero' if self <= 0
        return numbers_to_words[self] if numbers_to_words.include? self
        
        if self < 100
            tens = (self / 10 * 10).floor
            ones = self % 10
            return numbers_to_words[tens] if ones == 0
            return numbers_to_words[tens] <<  " "  << numbers_to_words[ones]
        end

        if ( self < 1000) 
          if ( self % 100 === 0)
              return (self / 100).in_words << ' hundred'
          else
              return (self / 100).in_words << ' hundred ' << (self % 100).in_words
          end
        end

        number_fragments.each do | key, value |
        if self / key >= 1 && self / key < 1000 

            if self % key == 0
               return (self/key).in_words << " " << number_fragments[key] 
            end
    
            return (self/key).in_words << " " << number_fragments[key] << " " <<
                ( self % key ).in_words
          end
        end

    end

end

puts -12.in_words

