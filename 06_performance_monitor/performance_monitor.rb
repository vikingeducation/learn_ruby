def measure (repeats=1)
  elaspsed, repeat = 0, 0
  repeats.times do
    start=Time.now
    yield
    stop= Time.now
    elaspsed += stop-start
    repeat += 1
  end
  elaspsed/repeat
end