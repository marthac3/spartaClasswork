# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism

	def self.traits
		puts 'Animals can breathe, eat, drink, speak and procreate'
	end

	def breathe
		puts 'Animal breathed'
	end

	def eat
		puts 'Animal ate'
	end

	def drink
		puts 'Animal drank'
	end

	def speak
		puts 'Animal spoke'
	end

	def procreate
		puts 'Animal procreated'
	end

end

