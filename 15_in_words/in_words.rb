class Fixnum

  ONES = %w(one two three four five six seven eight nine)
  TEENS = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  TENS = %w(twenty thirty forty fifty sixty seventy eighty ninety)
  COMMA_WORDS = %w(thousand million billion trillion quadrillion)

  def in_words
    return "zero" if self == 0
    num = self
    words = []
    if num > 0
      to_chunks(num, words)
    else
      to_chunks(num, words)
      words << "Negative"
    end
    words.join(" ")
  end

  def to_chunks(num, words)
    part_one = num.to_s.chars.reverse.each_slice(3).map(&:reverse)
    part_two = part_one.reverse.map(&:join)
    num_chunks = part_two.map(&:to_i)
    chunks_to_words(num_chunks, words)
  end

  def ones(chunk, words)
    index = chunk - 1
    words << "#{ONES[index]}"
    chunk = 0
  end

  def teens(chunk, words)
    index = chunk%10
    words << "#{TEENS[index]}"
    chunk = 0
  end

  def tens(chunk, words)
    index = chunk/10 -2
    words << "#{TENS[index]}"
    chunk - (chunk/10) * 10
  end

  def hundreds(chunk, words)
    index = chunk/100 - 1
    words << "#{ONES[index]} hundred"
    chunk - (chunk/100) * 100
  end

  def comma_words(num_chunks, words)
    index = num_chunks.length - 2
    words << "#{COMMA_WORDS[index]}"
  end

  def chunks_to_words(num_chunks, words)
    while num_chunks.length > 0
      chunk = num_chunks[0]
      while chunk > 0
        if chunk/100 > 0
          chunk = hundreds(chunk, words)
        elsif chunk/10 > 0
          if chunk/10 == 1 #teens special cases
            chunk = teens(chunk, words)
          else
            chunk = tens(chunk, words)
          end
        else
          chunk = ones(chunk, words)
        end
      end
      if num_chunks.length > 1
        unless num_chunks[0].to_s.chars.all? {|x| x == "0"}
          comma_words(num_chunks, words)
        end
      end
      num_chunks.shift
    end
  end

end