def echo(phrase)
  return phrase
end

def shout(phrase)
  return phrase.upcase
end 

def repeat(phrase, *again)
  temp = "#{phrase} #{phrase}"
  if again.length > 0
    3.upto(again[0]) do
      temp += " #{phrase}"
    end
  end
  return temp
end 

def start_of_word(phrase, index)
 return phrase[0..(index-1)]
end

def first_word(phrase)
  return phrase.split(' ')[0]
end

def titleize(phrase)
  temp = phrase.capitalize
  words = phrase.split(' ')
  words.each do |werd|
    if werd == "over"
    elsif werd.length > 3 
      temp = temp.sub(werd, werd.capitalize)
    end
  end
  return temp
end