class Person
	attr_accessor :name, :sex, :age, :weight, :height

	def initialize(name, sex, age, weight, height)
		self.name = name
		self.sex = sex
		self.age = age
		self.height = height
		self.weight = weight
	end

	def calculate_bmi
  	(self.weight / (self.height  ** 2)).to_i
	end

	def calculate_calories
	  if self.sex == "Male"
	    bmr = 66.47 + (13.7 * self.weight) + (5 * self.height * 100) - (6.8 * self.age)
	  else
	    bmr = 655.1 + (9.6 * self.weight) + (1.8 * self.height * 100) - (4.7 * self.age)
	  end

	  bmr.to_i
	end

	def describe
		puts "#{self.name} has a BMI of #{calculate_bmi}. Recommend calorie intake is #{calculate_calories} calories"
	end
end