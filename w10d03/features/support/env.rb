require 'appium_lib'
require 'cucumber'
require 'pry'
require_relative '../../lib/pages/budget_app'

def opts
  {
   caps: {
      platformName: "Android",
      deviceName: "pixel-emulator",
      app: BUDGETWATCH_FILE_PATH
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)