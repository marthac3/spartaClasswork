require 'capybara/dsl'
class TumblrDashboard
	include Capybara::DSL

	@@login_page_url = '/dashboard'

	@@photo_icon = '#new_post_label_photo'

	def url
		current_url
	end

	def click_photo_icon
		find(@@photo_icon).click
	end

end