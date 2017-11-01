require 'selenium-webdriver'

class SeleniumQatoolsForm

	def initialize
		Selenium::WebDriver::Chrome.driver_path = '/usr/local/Cellar/chromedriver/2.31/bin/chromedriver'
		@driver = Selenium::WebDriver.for :chrome
		@practice_form_url = 'http://toolsqa.com/automation-practice-form/'
	end

	def access_practice_form
		@driver.get @practice_form_url
	end

	def add_name_to_firstname_field
		@driver.find_element(:name, 'firstname').send_keys('Martha')
	end

	def add_name_to_lastname_field
		@driver.find_element(:name, 'lastname').send_keys('Conway')
	end

	def select_sex
		num = rand(1)
		@driver.find_element(:id, "sex-#{num}").click
	end

	def input_date
		@driver.find_element(:id, "datepicker").send_keys('31/10/2017')
	end

	def select_profession
		num = rand(1)
		@driver.find_element(:id, "profession-#{num}").click
	end

	def select_continent
		drop_down = @driver.find_element(:id, "continents")
		#option = Selenium::WebDriver::Support::Select.new(dropDown)
		#option.select_by(:text, 'Europe')
		options = drop_down.find_elements(:tag_name, 'option')
		options[0].click
	end

	def get_first_name_text
		puts @driver.find_element(:name, 'firstname')['value']
	end

end

practice_form_page = SeleniumQatoolsForm.new
practice_form_page.access_practice_form
practice_form_page.add_name_to_firstname_field
practice_form_page.add_name_to_lastname_field
practice_form_page.select_sex
practice_form_page.input_date
practice_form_page.select_profession
practice_form_page.select_continent
practice_form_page.get_first_name_text

sleep 5