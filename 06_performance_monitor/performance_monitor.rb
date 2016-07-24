def measure n = 1
  beginning_time = Time.now
  n.times { yield }
  end_time = Time.now
  (end_time - beginning_time) / n
end
