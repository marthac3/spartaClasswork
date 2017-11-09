require_relative "./spec_helper"

describe "Testing the budget app" do
	before(:all) do
		@driver = Appium::Driver.new(opts, true)
		Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
		@driver.start_driver
	end

	it "should open the budgetwatch app" do
		find_elements(:id, 'protect.budgetwatch:id/action_settings')[0]. displayed?
	end

	after(:all) do
		@driver.driver_quit
	end
end