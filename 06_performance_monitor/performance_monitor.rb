def measure(n=1)
  elapsed_time = Time.now
  n.times do
    yield
  end
  ( Time.now - elapsed_time ) / n
end
