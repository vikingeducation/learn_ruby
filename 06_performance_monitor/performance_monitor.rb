# def measure n = 1
# 	total_time = 0
# 	start_time = Time.now
# 	n.times { yield }
# 	end_time = Time.now
# 	total_time += end_time - start_time
# 	total_time / n
# end

def measure(repeat = 1)
	start_time = Time.now

	repeat.times { |x|
		yield x
	}
	end_time = Time.now
	elapsed_time = (end_time - start_time)/repeat
end

# def measure count=1
#   total_time = 0
#   count.times do
#     start_time = Time.now

#     yield

#     end_time = Time.now
#     total_time += end_time - start_time
#   end
#   total_time / count
# end