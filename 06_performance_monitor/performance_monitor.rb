def measure(num = 1, &code_block)
	if num != 1
		start_time = Time.now
		num.times {code_block.call}
		end_time = Time.now
		elapsed = end_time - start_time
		avg = elapsed / num
	else
		start_time = Time.now
		code_block.call
		end_time = Time.now
		elapsed = end_time - start_time
	end
end