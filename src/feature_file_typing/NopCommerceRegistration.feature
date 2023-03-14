Feature: Nopcommerce Registration functionality
  As a user I want to check the Registration Functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given I open the Google chrome browser
    When  I open the URL " https://demo.nopcommerce.com/register"
    Then  I am on Nopcommerce Registration page

    Scenario Outline: I sh ould not be able to register with Invalid data in mandatory field "*"
      When  I enter First name "<First Name>"
      And   I enter Last name "<Last Name>"
      And   I enter Email address "<Email>"
      And   I enter Password "<Password>"
      And   I enter Confirm password "<Confirm password>"
      And   I click on Register Button
      Then  I can see Error message "<error message>"
      And   I am not able to Register

      Examples:
      |First Name|Last Name|Email             |Password|Confirm Password|error message                                                                        |
      |""        |Sen      |nikki@gmail.com   |123456  | 123456         | Please enter First Name         |
      |Nik       |""       |nikki@gmail.com   |123456  | 123456         | Please enter Last Name          |
      |Nik       |Sen      |""                |123456  |123456          | Please enter Email address      |
      |Nik       |Sen      |nikki@gmail.com   |""      |123456          | Password is required            |
      |Nik       |Sen      |nikki@gmail.com   |123456  |""              | Confirm Password is required     |
      |Nik       |Sen      |nikki@gmail.com   |123456  |234561          | Password and Cofirm Password should match |
      |Nik       |Sen      |nikki@gmail.com   |12345   |12345           | minimum 6 character resquired in Password and Confirm Password |
      |""        |""       |  ""              |""      |  ""            | Mandatory "*" field is required                                |

      Scenario: I should be able to select any one radio button from Gender Label of your personal details section
        Given   I am on Gender Label of Your personal detail section
        When    I Select "Male" radio button
        And     I select "Feale" radio button
        Then    I am able to select any one of the radio button

        Scenario Outline: I should be able to select Day, Month and Year from drop down menu of the date of Birth field
          Given   I am on Date of Birth field
          When    I select day "<Day>"
          And     I select month "<Month>"
          And     I select year  "<Year>"
          Then    I am able to select Day, Month and Year from drop down list

          Examples:
          |Day|Month      |Year   |
          |13 |October    |1991   |

          Scenario: I should be able to check and uncheck Newsletter box on Options section
            Given   I am on Newsletter label on Options section
            When    I Click on Newsletter checkbox
            And     I again click on Newsletter checkbox
            Then    I was able to check and uncheck the box next to Newsletter label

            Scenario: I should be able to register with valid mandatory "*" field
              When    I enter First name "Nik"
              And     I enter Last Name   "Sen"
              And     I enter Email "nikki@gmail.com"
              And     I enter Password "123456"
              And     I enter Confirm Password "123456"
              And     I clcik on Register Button
              Then    I was able to register successfully


