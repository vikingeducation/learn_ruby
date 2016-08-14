def measure(n=1)
  arr = []

  n.times do
    begin_time = Time.now
    yield
    end_time = Time.now
    arr.push(end_time - begin_time)
  end
  
  arr.reduce(:+) / n
end
