require 'capybara/dsl'

class BBCSignIn
	include Capybara::DSL

	SIGN_IN_URL = "https://account.bbc.com/signin"
	EMAIL_FIELD = "user-identifier-input"
	PASSWORD_FIELD = "password-input"
	SUBMIT_BUTTON = "submit-button"
	PASSWORD_ERROR = "#form-message-password"

	def fill_in_email(email)
		fill_in EMAIL_FIELD, with: email
	end

	def fill_in_password(password)
		fill_in PASSWORD_FIELD, with: password
	end

	def submit
		click_button SUBMIT_BUTTON
	end

	def check_error
		has_selector?(PASSWORD_ERROR)
	end

end