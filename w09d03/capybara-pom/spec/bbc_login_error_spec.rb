
describe 'Incorrect user details produces valid error' do
	context 'Correct errors thrown when incorrect details are input' do
		it 'should produce an error when inputting an incorrect password to a valid account' do
			@bbc_site = BBCSite.new
			@bbc_site.bbc_homepage.visit_homepage
			@bbc_site.bbc_homepage.sign_in_link.click
			@bbc_site.bbc_sign_in_page.fill_in_email('r1565240@mvrht.net')
			@bbc_site.bbc_sign_in_page.fill_in_password('password')
			@bbc_site.bbc_sign_in_page.submit
			expect(@bbc_site.bbc_sign_in_page.check_error).to be true
		end
	end
end