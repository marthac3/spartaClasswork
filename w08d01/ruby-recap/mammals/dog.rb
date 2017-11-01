require_relative '../animal'
require_relative '../animal_types/mammals'
# Our dog class/template will inherit from animal and be affected by animal types
class Dog < Animal
	# extend Mammals for class methods
	include Mammals

	def bark
		puts 'dog barked'
	end

end

dog = Dog.new

dog.common_mammal_traits
dog.bark


