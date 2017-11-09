

Given(/^I am on the Tumblr homepage$/) do
	@tumblr_site = TumblrSite.new
	@tumblr_site.tumblr_homepage.visit_homepage
end

When(/^I click on the login button$/) do
	@tumblr_site.tumblr_homepage.login_link.click
end

Then(/^I am redirected to the login page$/) do
	expect(@tumblr_site.tumblr_login_page.url).to eql ('https://www.tumblr.com/login')
end

Given(/^I am on the login page$/) do
	@tumblr_site = TumblrSite.new
	@tumblr_site.tumblr_login_page.visit_login_page
end

When(/^I fill in the relevant fields$/) do
	@tumblr_site.tumblr_login_page.fill_email_field('egghead@hotmail.com')
	@tumblr_site.tumblr_login_page.click_next
	@tumblr_site.tumblr_login_page.fill_password_field('onionboy1')
	@tumblr_site.tumblr_login_page.click_login
end

Then(/^I am logged in$/) do
	expect(@tumblr_site.tumblr_dashboard.url).to eql ('https://www.tumblr.com/dashboard')
end

Given(/^I am on the dashboard$/) do
	@tumblr_site = TumblrSite.new
	@tumblr_site.tumblr_login_page.visit_login_page
	@tumblr_site.tumblr_login_page.fill_email_field('egghead@hotmail.com')
	@tumblr_site.tumblr_login_page.click_next
	@tumblr_site.tumblr_login_page.fill_password_field('onionboy1')
	@tumblr_site.tumblr_login_page.click_login
end

When (/^I click on photo icon$/) do
	@tumblr_site.tumblr_dashboard.click_photo_icon
end

Then (/^I am on the photo form$/) do
	expect(@tumblr_site.tumblr_dashboard.url).to eql ('https://www.tumblr.com/new/photo')
end