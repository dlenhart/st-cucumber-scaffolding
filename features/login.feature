Feature: Test Guru99 Logins
Test login feature with multiple scenarios

Background:
  Given I am on the homepage

Scenario: Login without email
  When enter blank details for Register
  Then the validation message should appear
