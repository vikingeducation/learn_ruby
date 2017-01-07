def measure(n = 1, &block)
  if block_given?
    start = Time.now
    n.times { block.call }
    finish = Time.now

    (finish - start) / n
  end
end

