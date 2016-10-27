def measure num=1
  nt = Time.now
  num.times do
    yield
  end
  total = (Time.now - nt)/num
end