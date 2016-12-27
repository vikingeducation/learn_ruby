def echo(statement)
  statement
end

def shout(statement)
  statement.upcase
end

def repeat(input, n=2)
  ([input] * n).join(' ')
end

def start_of_word(word, num)
  word.slice(0..(num - 1))
end

def first_word(input)
  input.split(' ')[0]
end

def titleize(input)
  captilized = []
  little_words = ['and', 'the', 'over']
  input.split(' ').each_with_index do |word, ind|
    if ind != 0 && little_words.include?(word)
      captilized.push(word)
    else
      captilized.push(word.capitalize)
    end
  end

  captilized.join(' ').to_s
end
