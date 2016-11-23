
def measure(times_to_run_block = 1)
  before = Time.now
  times_to_run_block.times do
    yield()
  end
  after = Time.now
  return (after - before) / times_to_run_block
end