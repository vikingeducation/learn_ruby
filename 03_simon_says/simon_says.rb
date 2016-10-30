def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  phrase = ""
  until num == 0
    phrase += str
    phrase += " "
    num -= 1
  end
  phrase.strip
end

def start_of_word(word,num_letters)
  word.slice(0, num_letters)
end

def first_word(str)
  str.split(' ').first
end

def titleize(str)
  small_word = ['and','over','the']
  str_array = str.split(' ')
  str_array.each_with_index do |i, index|
    if index == 0
      i.capitalize!
    elsif small_word.include?(i)
      i
    else
      i.capitalize!
    end
  end
  str_array.join(' ')
end