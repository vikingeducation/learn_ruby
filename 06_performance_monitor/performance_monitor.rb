

require 'time'
def measure(pass = 1) #the default is 1 block given
    start_time = Time.now #we start timing
    divisor = pass
    if pass == 1 #if there is just one given block
      yield #we run it once
    else #if we are given several blocks
      while pass > 0 #we run them each once
        yield
        pass -= 1
      end
    end
    return (Time.now - start_time)/divisor #then we return the time it took divided by the number of times we ran
end