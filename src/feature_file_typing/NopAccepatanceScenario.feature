Feature:     Demo Nopcommerce top menu acceptance criteria

  As a User I woul dlike to check Acceptancce criteria of Nopcommerce topmenu

  Background: User is on given URL
    Given   User type URL "https://demo.nopcommerce.com"
    When    User clicks on Enter button
    Then    User is on given URL


    Scenario: Verify that user can navigate to Books category
      When  Click on "Books" tab on Top menu
      Then  User is navigated to Books Category page


      Scenario: Verify that user can see the Books category page with filters and list of products
        Given User is on "Books" tab on Top menu
        When  Check Filters and List Tab
        Then  Book category page is dispalyed with Filters and List Tab

        Scenario: Verify that user can see "Sort by" filter on Books category page
          Given User is on "Books" Category page
          When  Check "Sort By" Filter is present
          Then  "Sort by" filter is available on Book Category page

          Scenario: Verify that user can see "Display" Filter on Book Category page
            Given User is on Books category page
            When  User check "Display" filter is present
            Then  :Display" Filter is avaialble on Books category page

            Scenario: Verify that user can see "Grid" tab on Book Category page
              Given User is on Books category page
              When  User check "Grid" tab is present
              Then  "Grid" tab is available on Book Category page

              Scenario: Verify that user can see "List" tab on Book category page
                Given User is on Books Category page
                When  User check "List" tab is present
                Then   "List" tab is available on Books category page

                Scenario: Verify that user can see :Name: A to Z" selection is present in "Sort by" filter
                  Given User is on Books category page
                  When  Click on "Sort by" filter
                  And   Check that "Name: A to Z " Selection is present
                  Then  "Name : A to Z" selection is present in Sort by Filter

                  Scenario: Verify that user can see :Name: A to Z" as the first option in "Sort by" filter
                    Given User is on Books category page
                    When  Click on "Sort by" filter
                    And   Check that "Name: A to Z " Selection is present as first in the list
                    Then  "Name: A to Z " Selection is present as first in the list

                    Scenario: Verify that user can see "Name: A to Z" filter is functional as expected (Note : Products are filtered in alphabetical order)
                      Given User is on Books category page
                      When  User click on "Sort by" Filter
                      And   Select "Name : A to Z" filter
                      Then  All products are displayed in alphabetical order