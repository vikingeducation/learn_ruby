require "time"

def measure(times=1)
  acc = []
  times.times do
    start = Time.now
    yield
    acc.push(Time.now - start)
  end
  acc.reduce(&:+).to_f / times.to_f
end
