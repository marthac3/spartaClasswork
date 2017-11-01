describe 'testing the katalon registration page' do

	before(:all) do
		@session = Katalon.new
		@session.access_form
	end

	context 'positive paths for the registration form and register' do

		it 'should land on the correct page' do
			 expect(@session.current_url).to eql("http://demoaut.katalon.com/")
		end

		it 'should lead to login page' do
			@session.click_appointment_button
			expect(@session.current_url).to eql("http://demoaut.katalon.com/profile.php#login")
		end

		it 'should lead back to home page' do
			@session.click_menu_toggle
			@session.click_menu_home
			expect(@session.current_url).to eql("http://demoaut.katalon.com/")
		end

		it 'should lead to the login page' do
			@session.click_menu_toggle
			@session.click_menu_login
			expect(@session.current_url).to eql("http://demoaut.katalon.com/profile.php#login")
		end

		it 'should lead to the make appointment page' do
			@session.click_login_button
			expect(@session.current_url).to eql("http://demoaut.katalon.com/#appointment")
		end

		it 'should go to the history section' do
			@session.click_menu_toggle
			@session.click_menu_history
			expect(@session.current_url).to eql("http://demoaut.katalon.com/history.php#history")
		end

		it 'should go to the homepage' do
			@session.click_history_homepage_button
			expect(@session.current_url).to eql("http://demoaut.katalon.com/")
		end

		it 'should go to the profile section' do
			@session.click_menu_toggle
			@session.click_menu_profile
			expect(@session.current_url).to eql("http://demoaut.katalon.com/profile.php#profile")
		end

		it 'should logout' do
			@session.click_logout_button
			expect(@session.current_url).to eql("http://demoaut.katalon.com/")
		end

		it 'should select facility' do
			@session.click_appointment_button
			@session.click_login_button
			@session.facility
			expect(@session.get_facility).to eql("Seoul CURA Healthcare Center")
		end

		it 'should check readmission box' do
			@session.select_apply_box
			expect(@session.get_apply_box).to be true
		end

		it 'should check no healthcare' do
			@session.select_healthcare_none
			expect(@session.get_healthcare).to be true
		end

		it 'should choose a date' do
			@session.select_date
			expect(@session.get_date).to eql("01/02/2018")
		end

	end

end