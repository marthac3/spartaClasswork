require 'appium_lib'
require 'pry'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      "platformName": "Android",
      "deviceName": "pixel-emulator",
      "app": "/Users/tech-a56/Downloads/budgetwatch.apk"
    }
  }
end