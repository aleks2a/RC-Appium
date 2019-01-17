Given(/^I land on login screen$/) do
  expect(sign_in_screen.signup_button.text).to eql("Don't have an account? Sign Up")
end

Then(/^I press SignIn button$/) do
  sign_in_screen.sign_in_btn.click
end

And(/^Submit "([^"]*)" phone number with password "([^"]*)"$/) do |phone, pass|
  sign_in_screen.send_phone_number(phone)
  sign_in_screen.send_password(pass)
  sign_in_screen.submit_credentials
end

Then(/^I see "([^"]*)" error message body$/) do |body|
  error_messages.error_message_title
end

Then(/^I see "([^"]*)" error message title$/) do |title|
  error_messages.error_message_title
end