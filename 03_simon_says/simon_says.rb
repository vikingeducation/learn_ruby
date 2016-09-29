def echo(say)
  say
end

def shout(say)
  say.upcase
end

def repeat(say, *multi)
  multi[0] ||= 2
  ((say+" ")*multi[0]).strip!
end


def start_of_word(say, *length)
  length[0] ||= 1
  say[0..length[0]-1]
end

def first_word(say)
  say.split(' ')[0]
end

def titleize(say)
  say = say.split
  say[0].capitalize!
  say.map! do |i|
    if(i == "the" || i == "and" || i == "over")
      i
    else
      i.capitalize
    end
  end
  say.join(" ")
end