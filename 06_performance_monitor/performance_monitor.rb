def measure(pass=0)
  t1 = Time.now
  if pass == 0
    yield
  else
    pass.times {yield}
  end
  (Time.now - t1)/(pass == 0 ? 1 : pass)
end

