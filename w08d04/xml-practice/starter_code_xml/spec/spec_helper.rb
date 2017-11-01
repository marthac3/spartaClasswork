require 'nokogiri'

RSpec.configure do |config|
  config.formatter = :documentation
end

class XMLMenu

	def initialize(xml_file)
		@xml_file = Nokogiri::XML(open('./xml_menu.xml'))
	end

	def price
		@xml_file.search('price').each do |price|
			priceString = price.content
			priceString[0] = ''
			priceString.to_i
		end
	end

	#def calories
	#	@xml_file.search('name').each do |name|
  #		nameString = name.content
  #		if nameString != "Full Breakfast"
  #			name.next.next.content
  #		end
  #	end
  #end

  #def calories
  #	@xml_file.search('calories').each do |calories|
  #		caloriesString = calories.content
  #		caloriesString.to_i
  #	end
  #end

  def calories
  	thousand = true
  	@xml_file.search('food').each do |food|
  		if !(food.element_children[0].content.include? "Full Breakfast")
  			calories = food.element_children[3].content.to_i
  			if calories >= 1000
  				thousand = false
  			end
  		end
  	end
  	thousand
  end

  def waffles
  	two = true
  	@xml_file.search('food').each do |food|
  		if food.element_children[0].content.include? "Waffles"
  			description = food.element_children[2].content
  			description1 = description.split[0]
  			if description1 != "Two"
  				two = false
  			end
  		end
  	end
  	two
  end

end