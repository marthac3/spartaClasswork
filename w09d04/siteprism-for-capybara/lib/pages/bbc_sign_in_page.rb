class Pages::BBCSignInPage < SitePrism::Page

	set_url "https://account.bbc.com/signin"
	set_url_matcher /account.bbc.co.uk/

	element :email_field, "#user-identifier-input"
	element :password_field, "#password-input"
	element :submit_button, "#submit-button"

	def fill_email_field(email)
		email_field.set email
	end

	def fill_password_field(password)
		password_field.set password
	end

	def click_submit
		submit_button.click
	end

end