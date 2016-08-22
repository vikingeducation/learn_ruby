require 'time'

def measure(num_times = 1)
  times = []
  num_times.times do
    time = Time.now
    yield
    times << Time.now - time
  end
  times.reduce(0) {|total, item| total + item} / times.length
end
