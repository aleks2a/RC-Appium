@all
Feature: Demo

  Scenario: Submit incorrect credentials
    Given I land on login screen
    Then I press SignIn button
    And Submit "123123123" phone number with password "uniquePass"
    Then I see "Invalid phone number or password. Please try again." error message body

  Scenario: Submit credentials without sufficient permission
    Given I land on login screen
    Then I press SignIn button
    And Submit "13133982768" phone number with password "BSRz6JtFEELhV8S"
    Then I see "" error message title
    Then I see "Sorry, you don't have sufficient permission to use this app. Please contact your account administrator." error message body

