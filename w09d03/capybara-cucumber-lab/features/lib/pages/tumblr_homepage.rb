require 'capybara/dsl'
class TumblrHomepage
	include Capybara::DSL

	@@homepage_url = '/'
	@@login_link_id = '#signup_login_button'

	def visit_homepage
		visit(@@homepage_url)
	end

	def login_link
		find(@@login_link_id)
	end

end