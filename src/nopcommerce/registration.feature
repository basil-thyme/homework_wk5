Feature: Nopcommerce Registration
As a User I want to check the register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given     I open the Google chrome Browser
    When      I open the Url https://demo.nopcommerce.com/register
    Then      I am on Nopcommerce registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When     I enter first name "<firstName>"
    And      I enter first name "<lastName>"
    And      I enter first name "<email>"
    And      I enter first name "<password>"
    And      I enter confirm password "<confirmPassword>"
    And      I click on Register button
    Then     I can see an error message "<errorMessage>"
    And      I am not able to register

    Examples:
      |firstName  |lastName  |email        |password|confirmPassword  |errorMessage                      |
      |           |Smith     |Xyz@gmail.com|ABCD1234|ABCD1234         |Please enter First Name           |
      |   John    |          |Xyz@gmail.com|ABCD1234|ABCD1234         |Please enter Last  Name           |
      |   John    |Smith     |             |ABCD1234|ABCD1234         |Please enter Valid email          |
      |   John    |Smith     |Xyz@gmail.com|        |ABCD1234         |Password is required              |
      |   John    |Smith     |Xyz@gmail.com|ABCD1234|                 |Confirm Password is required      |
      |           |          |             |        |                 |Mandatory (*) fields are required |

    Scenario: I should be able to register with valid mandatory (*) field data on registration page
      When   I enter first name "John"
      And    I enter last name "Smith"
      And    I enter an email "John.smith@gmail.com"
      And    I enter password "ABCD1234"
      And    I enter confirm password "ABCD1234"
      And    I click on Register button
      And    I am able to register successfully

    Scenario: I should be able select radio button from gender label
      Given   I am on gender label of your personal detail section
      When    I select "Male" radio button
      And     I select "Female" radio button
      Then    I am able to select any one of the  radio button

    Scenario Outline: I should be able to select Day, Month and Year from drop down list of the Date of birth field
      Given   I am on Date of Birth field of your personal detail section
      When    I select day "<Day>"
      And     I select month "<Month>"
      And     I select Year "<Year>"
      Then    I am able to select day, Month and Year from drop down list

    Examples:
            |Day  | Month  |Year    |
            |14   | April  |1978    |

    Scenario: I should be able to Deselect Newsletter checkbox
      Given	  Newsletter checkbox is ticked
      When 	  I click on Newsletter checkbox
      Then 	  Newsletter checkbox is unselected