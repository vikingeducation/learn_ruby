def measure(n=1)
  begin_time = Time.now
  n.times{yield}
  runtime = Time.now - begin_time
  runtime = n > 1 ? runtime / n : runtime
end
