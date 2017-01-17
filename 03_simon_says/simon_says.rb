def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
  result = (str + ' ') * num
  result[0..-2] #remove trailing space
end

def start_of_word(str, num=1)
  str[0..num-1]
end

def first_word(str)
  str.split(' ')[0]
end


def titleize(str)
  result = str.split(' ').each_with_index do |word, index|
    if index == 0
      word.capitalize!
    elsif (word != 'and') && (word != 'over') && (word != 'the')
      word.capitalize!
    end

  end
  result.join(' ')
end

# # p first_word('hello there')
# z = ''
# z=  'david copperfield'.split(' ').each {|x| x.capitalize!}
# p z.join(' ')
