Feature: Bookcategory
  Background: I should be able to see homepage
    Given     I enter URL "https://demo.nopcommerce.com/" in browser
    And       I am on homepage

    Scenario Outline: I should be able to see top menu tabs on homepage with categories

      When I am on Home page
      Then I should be able to see top menu tabs with "<categories>"

      Examples:
                |   categories          |
                |   computer            |
                |   electronic          |
                |   apparel             |
                |   digital downloads   |
                |   books               |
                |   jewellery           |
                |    gift card          |

      Scenario Outline: I should be able to see book page with filters
        Given   I select book category from  top menu tabs on homepage
        When    I should be navigated to book category
        And     I  should be able to see "<filters>"

        Examples: | Filters     |
                  | sort by     |
                  | Display     |
                  | the grid    |
                  |  list tab   |

        Scenario Outline: I should be able to see list of terms of each filter
          Given   I am on book page
          When    I click on "<filter>"
          Then    I should be able to see "<result>"

          Examples:         |   filter          |         option              |               result                                                |
                            | sort by           |     Name: A to Z            | sorted product with the product name in alphabetical order A to Z   |
                            | sort by           |     Name: Z to A            | sorted product with the product name in alphabetical order Z to A   |
                            | sort by           |     price:low to high       | sorted product with price in descending order                       |
                            | sort by           |     price: high to low      | sorted product with price in ascending order                        |
                            | sort by           |     created on              | recently added product should be displayed first                    |
                            | Display           |         3                   | 3 products in a page                                                |
                            | Display           |         6                   | 6 products in a page                                                |
                            | Dispaly           |         9                   | 9 products in a page                                                |


          Scenario Outline: I should be able to see product display format according display format type as per given picture in SRS document

            Given     I am on book page
            When      I click on "<display format icon>"
            Then      I should be able to see product display format according display format type as per given picture in SRS document

            Examples:     |   display format icon |
                          |       gird            |
                          |        list           |