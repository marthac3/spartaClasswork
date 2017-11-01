class StringCalculator

	def self.add(string)
		numbers = string.split(',')
		numbers.map! {|n| n.to_i}
		numbers.inject(0, :+)
	end

end