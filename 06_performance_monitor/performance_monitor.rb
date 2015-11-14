def measure(num = 1)
	time_calc = []
	num.times do
		start = Time.now
		yield
		finish = Time.now
		time_calc << (finish - start)
	end
	time_calc.inject(0, :+) / num.to_f
end
