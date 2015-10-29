def measure n=1
  runtimes = []
  n.times do
    start = Time.now
    yield
    runtimes << Time.now - start
  end
  runtimes.reduce(:+) / runtimes.size.to_f
end