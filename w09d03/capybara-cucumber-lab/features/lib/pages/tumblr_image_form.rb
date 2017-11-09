require 'capybara/dsl'
class TumblrDashboard
	include Capybara::DSL

	@@login_page_url = '/new/photo'

	def url
		current_url
	end

end