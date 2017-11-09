,require 'capybara/dsl'

class Katalon
	include Capybara::DSL

	def initialize
		@session = Capybara::Session.new(:selenium)
	end

	def access_form
		@session.visit('http://demoaut.katalon.com/')
	end

	def current_url
    @session.current_url
  end

  def click_appointment_button
  	@session.find('#btn-make-appointment').click
  end

  def click_menu_toggle
  	@session.find('#menu-toggle').click
  end

  def click_menu_home
  	@session.find(:xpath, '//*[@id="sidebar-wrapper"]/ul/li[2]/a').click
  end

  def click_menu_login
  	@session.find(:xpath, '//*[@id="sidebar-wrapper"]/ul/li[3]/a').click
  end

  def click_login_button
  	@session.click_button 'btn-login'
  end

  def click_menu_history
  	@session.find(:xpath, '//*[@id="sidebar-wrapper"]/ul/li[3]/a').click
  end

  def click_menu_profile
  	@session.find(:xpath, '//*[@id="sidebar-wrapper"]/ul/li[4]/a').click
  end

  def click_history_homepage_button
  	@session.find(:xpath, '//*[@id="history"]/div/div[3]/p/a').click
  end

  def click_logout_button
  	@session.find(:xpath, '//*[@id="profile"]/div/div/div/p[2]/a').click
  end

  def facility
  	@session.select 'Seoul CURA Healthcare Center', from: 'combo_facility'
  end

  def get_facility
  	@session.find('#combo_facility')['value']
  end

  def select_apply_box
  	@session.find('#chk_hospotal_readmission').click
  end

  def get_apply_box
  	@session.find('#chk_hospotal_readmission').checked?
  end

  def select_healthcare_none
  	@session.choose 'radio_program_none'
  end

  def get_healthcare
  	@session.find('#radio_program_none').checked?
  end

  def select_date
  	@session.fill_in 'txt_visit_date', with: '01/02/2018'
  end

  def get_date
  	@session.find('#txt_visit_date').value
  end

end