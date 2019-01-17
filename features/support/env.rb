require "appium_lib"
require "rspec"
require "pry"

Dir[File.join(File.dirname(__FILE__), '..', 'pom', '*.rb')].each {|file| require file }

def caps
  { caps: {
      automationName: "UIAutomator2",
      deviceName: "Android",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "base.apk")),
      appPackage: "com.ringcentral.android",
      appWaitActivity: "com.ringcentral.android.LoginScreen",
      newCommandTimeout: 3600,
      autoGrantPermissions: true
  }
  }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object



class POM
  attr_accessor :sign_in_screen, :error_messages

  def initialize
    @sign_in_screen = SigninScreen.new
    @error_messages = ErrorMessages.new
  end
end

World { POM.new }