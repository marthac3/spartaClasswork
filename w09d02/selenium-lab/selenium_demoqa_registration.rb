require 'selenium-webdriver'

class SeleniumDemoReg

  def initialize
    # set up driver
    Selenium::WebDriver::Chrome.driver_path='/usr/local/Cellar/chromedriver/2.31/bin/chromedriver'
    @chrome_driver = Selenium::WebDriver.for :chrome
    # Page fields
    @first_name_field = 'name_3_firstname' # id
    @last_name_field = 'name_3_lastname' # id
    @marital_status = 'radio_4[]' # id
    @hobby_status = 'checkbox_5[]' # values
    @country_dropdown_list = 'dropdown_7' # id
    @dob_month_dropdown_list = 'mm_date_8' # id
    @dob_day_dropdown_list = 'dd_date_8' # id
    @dob_year_dropdown_list = 'yy_date_8' # id
    @phone_number_field = 'phone_9' # id
    @username_field = 'username' # id
    @email_field = 'email_1' # id
    @profile_picture_button = 'profile_pic_10' # id
    @description_field = 'description' # id
    @password_field = 'password_2' # id
    @confirm_password_field = 'confirm_password_password_2' # id
    @submit_button = 'pie_submit' # name
    @registration_confirmation = 'piereg_message' #class
  end

  def access_registration_form
    @chrome_driver.get 'http://demoqa.com/registration/'
  end

  def current_url
    @chrome_driver.current_url
  end

  # first name field management

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:id, @first_name_field).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:id, @first_name_field)['value']
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:id, @first_name_field).displayed?
  end

  # last name field management

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:id, @last_name_field).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:id, @last_name_field)['value']
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:id, @last_name_field).displayed?
  end

  # Marital option management

  def select_marital_option(marital_status)

    case marital_status
      when 'Single'
        @chrome_driver.find_elements(:name, @marital_status)[0].click
        @chrome_driver.find_elements(:name, @marital_status)[0].selected?
      when 'Married'
        @chrome_driver.find_elements(:name, @marital_status)[1].click
        @chrome_driver.find_elements(:name, @marital_status)[1].selected?
      when 'Divorced'
        @chrome_driver.find_elements(:name, @marital_status)[2].click
        @chrome_driver.find_elements(:name, @marital_status)[2].selected?
      else
        raise('Options are Single, Married and Divorced')
    end

  end

  # hobby option management

  def select_hobby_option(hobby)

    case hobby
      when 'Dance'
        @chrome_driver.find_elements(:name, @hobby_status)[0].click
        @chrome_driver.find_elements(:name, @hobby_status)[0].selected?
      when 'Reading'
        @chrome_driver.find_elements(:name, @hobby_status)[1].click
        @chrome_driver.find_elements(:name, @hobby_status)[1].selected?
      when 'Cricket'
        @chrome_driver.find_elements(:name, @hobby_status)[2].click
        @chrome_driver.find_elements(:name, @hobby_status)[2].selected?
      else
        raise('Options are Dance, Reading and Cricket')
    end

  end

  # Select Country

  def get_selected_country
    options = @chrome_driver.find_element(:id, @country_dropdown_list)['value']
  end

  def country_dropdown_list_select(country)
    dropdown_list = @chrome_driver.find_element(:id, @country_dropdown_list)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |country_option|
      if country_option.text == country
        country_option.click
      end
    end

  end

  # DOB management

  def dob_month_list_select(month_value)
    dropdown_list = @chrome_driver.find_element(:id, @dob_month_dropdown_list)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |month_option|
      if month_option.text == month_value
        month_option.click
      end
    end
  end

  def get_month_selected
    @chrome_driver.find_element(:id, @dob_month_dropdown_list)['value']
  end

  def dob_day_list_select(day_value)
    dropdown_list = @chrome_driver.find_element(:id, @dob_day_dropdown_list)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |day_option|
      if day_option.text == day_value
        day_option.click
      end
    end
  end

  def get_day_selected
    @chrome_driver.find_element(:id, @dob_day_dropdown_list)['value']
  end

  def dob_year_list_select(year_value)
    dropdown_list = @chrome_driver.find_element(:id, @dob_year_dropdown_list)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |year_option|
      if year_option.text == year_value
        year_option.click
      end
    end
  end

  def get_year_selected
    @chrome_driver.find_element(:id, @dob_year_dropdown_list)['value']
  end



  # Phone number field management

  def set_phone_number_field(phone_number)
    @chrome_driver.find_element(:id, @phone_number_field).send_keys(phone_number)
  end

  def get_phone_number_field_value
    @chrome_driver.find_element(:id, @phone_number_field)['value']
  end

  #  username field management

  def set_user_name_field(user_name)
    @chrome_driver.find_element(:id, @username_field).send_keys(user_name)
  end

  def get_user_name_field_value
    @chrome_driver.find_element(:id, @username_field)['value']
  end

  # Email field management

  def set_email_field(email)
    @chrome_driver.find_element(:id, @email_field).send_keys(email)
  end

  def get_email_field_value
    @chrome_driver.find_element(:id, @email_field)['value']
  end

  # about yourself / description field

  def set_about_yourself_field(details)
    @chrome_driver.find_element(:id, @description_field).send_keys(details)
  end

  def get_about_yourself_value
    @chrome_driver.find_element(:id, @description_field)['value']
  end

  # Password management

  def set_password_field(password)
    @chrome_driver.find_element(:id, @password_field).send_keys(password)
  end

  def get_password_value
    @chrome_driver.find_element(:id, @password_field)['value']
  end

  def set_confirmation_password_field(password)
    @chrome_driver.find_element(:id, @confirm_password_field).send_keys(password)
  end

  def get_confirmation_password_value
    @chrome_driver.find_element(:id, @confirm_password_field)['value']
  end

  # registration confirmation

  def click_submit
    @chrome_driver.find_element(:css, "input[name=#{@submit_button}").submit
  end

  def check_registration_successful
    @chrome_driver.find_element(:class, @registration_confirmation)['value']
  end
end
