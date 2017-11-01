require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eql("http://demoqa.com/registration/")
    end

    it 'should accept a first name' do
      @driver.set_first_name_field("Martha")
      expect(@driver.get_first_name_field_value).to eql("Martha")
    end

    it 'should accept a last name' do
      @driver.set_last_name_field("Conway")
      expect(@driver.get_last_name_field_value).to eql("Conway")
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      statuses = ['Single', 'Married', 'Divorced']
      statuses.each do |status|
        expect(@driver.select_marital_option(status)).to be true
      end
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      hobbies = ['Dance', 'Reading', 'Cricket']
      hobbies.each do |hobby|
        expect(@driver.select_hobby_option(hobby)).to be true
      end
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eql('Afghanistan')
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select('3')
      @driver.dob_day_list_select('6')
      @driver.dob_year_list_select('1993')

      expect(@driver.get_month_selected).to eql('3')
      expect(@driver.get_day_selected).to eql('6')
      expect(@driver.get_year_selected).to eql('1993')
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select('Albania')
      expect(@driver.get_selected_country).to eql('Albania')
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('442071838750')
      expect(@driver.get_phone_number_field_value).to eql('442071838750')
      expect((@driver.get_phone_number_field_value).chars.length).to be >= 10
    end

    it 'should accept a username' do
      @driver.set_user_name_field('marthac3')
      expect(@driver.get_user_name_field_value).to eql('marthac3')
    end

    it 'should accept an email' do
      @driver.set_email_field('mrc@email.com')
      expect(@driver.get_email_field_value).to eql('mrc@email.com')
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field('I am a human')
      expect(@driver.get_about_yourself_value).to eql('I am a human')
    end

    it 'should accept a password' do
      @driver.set_password_field('password')
      expect(@driver.get_password_value).to eql('password')
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field('password')
      expect(@driver.get_confirmation_password_value).to eql('password')
    end

  end

end