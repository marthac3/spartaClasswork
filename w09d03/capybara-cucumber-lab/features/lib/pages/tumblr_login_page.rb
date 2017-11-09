require 'capybara/dsl'
class TumblrLoginPage
	include Capybara::DSL

	@@login_page_url = '/login'

	@@email_field = 'determine_email'
	@@password_field = 'user[password]'
	@@next_button = '//*[@id="signup_forms_submit"]/span[2]'
	@@login_button = '//*[@id="signup_forms_submit"]/span[6]'

	def url
		current_url
	end

	def visit_login_page
		visit(@@login_page_url)
	end

	def fill_email_field(email)
		fill_in (@@email_field), with: email
	end

	def click_next
		find(:xpath, @@next_button).click
	end

	def click_login
		find(:xpath, @@login_button).click
	end

	def fill_password_field(password)
		fill_in (@@password_field), with: password
	end

end