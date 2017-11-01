require 'json'
require 'date'
#require_relative '../json_parsing_walkthrough'
# require_relative 'json_example.json'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end

class ParseJson

	def initialize(json_file)
		@json_file = JSON.parse(File.read(json_file))
	end

	def base
		@json_file ["base"]
	end

	def date
		thing = @json_file ["date"]
		if Date.parse(thing)
			true
		end
	end

	def rates
		thing = @json_file ["rates"]
		thing.keys.count
	end

	def floats
		thing = @json_file ["rates"]
		check = true
		thing.each do |key, value|
			if !(value.is_a? Float)
				check = false
			end
		end
		check
	end

end
