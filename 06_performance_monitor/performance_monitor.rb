def measure(num=1)
  total = 0
  num.times do
    start = Time.now
    yield
    last = Time.now
    total += last - start
  end

  total / num
end