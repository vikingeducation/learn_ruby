def measure(num=1)
  start = Time.now
  num.times do
    yield
  end
  finish = Time.now
  diff = finish - start
  average = diff/num
end