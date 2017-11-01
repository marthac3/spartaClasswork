class MultipleCalculator

	def self.multiples(num)
		multiples = []
		for i in 1..num.to_i-1 do
			if (i%3 == 0) || (i%5 == 0)
				multiples.push(i)
			end
		end
		multiples
	end

	def self.add(num)
		multiples = multiples(num)
		sum = multiples.inject(0, :+)
		if sum == 0
			"Invalid Input"
		else
			sum
		end
	end
end