Given(/^I can access the toolsqa practice automation form$/) do
	visit('/automation-practice-form')
end

When(/^I fill in form fields with expected data types$/) do
	fill_in 'firstname', with: "Martha"
	fill_in 'lastname', with: "Conway"
	choose 'sex-1'
	choose 'exp-0'
end

Then(/^they appear on the page correctly$/) do
	expect(find('input[name=firstname]').value).to eql("Martha")
	expect(find('input[name=lastname]').value).to eql("Conway")
	expect(find('#sex-1').checked?).to be true
	expect(find('#exp-0').checked?).to be true
end