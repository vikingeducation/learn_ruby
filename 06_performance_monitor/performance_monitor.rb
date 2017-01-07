def measure rounds=1
  start = Time.now
  rounds.times do |round|
    yield
  end
  (Time.now - start) / rounds
end
