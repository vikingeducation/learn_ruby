def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, num_times=2)
  output = (" " + phrase) * num_times
  output.strip
end
