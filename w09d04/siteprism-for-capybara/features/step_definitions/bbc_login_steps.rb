Given(/^I can access the BBC home page$/) do
	@bbc_site = BBCSite.new
	@bbc_site.bbc_home_page.load
	@bbc_site.bbc_home_page.displayed?
end

And(/^I am able to select sign in$/) do
	@bbc_site.bbc_home_page.has_sign_in_link?
	#expect(@bbc_site.bbc_home_page).to have_sign_in_link
	@bbc_site.bbc_home_page.click_sign_in_link
end

When(/^I enter my login details$/) do
	@bbc_site.bbc_sign_in_page.has_email_field?
	@bbc_site.bbc_sign_in_page.has_password_field?
	@bbc_site.bbc_sign_in_page.fill_email_field('marthaconway93@gmail.com')
	@bbc_site.bbc_sign_in_page.fill_password_field(ENV['BBC_LOGIN_PASSWORD'])
end

And(/^I click sign in$/) do
	@bbc_site.bbc_sign_in_page.has_submit_button?
	@bbc_site.bbc_sign_in_page.click_submit
end

Then(/^I have been signed in$/) do
	expect(@bbc_site.bbc_home_page).to be_displayed
end