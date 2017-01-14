def reverser

  yield.split(' ').each {|word| word.to_s.reverse!}.join(' ')

end

def adder(num=1)
  yield + num
end


def repeater(numtimes=1)

    numtimes.times {yield}

end
