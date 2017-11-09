Given(/^I can open the app$/) do
	main_page.main_page_displayed?
end

When(/^click on budget$/) do
	main_page.budget_button_click
end

Then(/^the budget page opens$/) do
	budget_page.budget_page_displayed?
end