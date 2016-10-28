def reverser 

  input_string = yield

  input_words = input_string.split(" ")
  reversed_phrase = " "

  for i in 0...input_words.length
    word = input_words[i]
      chars = word.chars
      length = chars.length - 1
      reversed_word = [" "]

      for j in 0..length
        reversed_word[j] = chars[length]
        length -= 1
        
      end

      input_words[i] = reversed_word.join

    end

    reversed_phrase = input_words.join(" ")

end

def adder(num_to_add=1)

  first_num = yield

  total = first_num + num_to_add

end

def repeater(times_to_run=1)

  times_to_run.times { yield }


end


