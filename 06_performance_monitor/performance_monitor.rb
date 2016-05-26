def measure repeats=1
    start = Time.now
    repeats.times do
        yield
    end
    (Time.now - start) / repeats
end
