Feature:Book category

Background: I should be able to see homepage
  Given     I enter URL :https://demo.nopcommerce.com in browser
  And       I am on homepage

  Scenario Outline :I should be able to see top menu tabs on homepage with categories
  When      I am on homepage
  Then      I am able to see top menu tabs with "<categories>"
  Examples:
            |categories        |
            |computer          |
            |Electronic        |
            |Apparel           |
            |Digital downloads |
            |Books             |
            |jewellery         |
            |Gift card         |

Scenario Outline:I should be able to see book page with filters
  When      I select book category from top menu tabs on homepage
  Then      I should be navigated to book category
  And       I am able to see "<filters>"
  Examples:
           |filters|
           |sort by|
           |display|
  Scenario Outline: I should be able to see list of terms of each filter
  Given     I am on the book category page
  When      I click on "<filter>"
  Then      I am able to see "<list>" in dropdown menu
  Examples:
           | filter    |  list                                                                         |
           | sort by   | Name: Ato z,name : Z to A, Price :Low to High, Price : High to Low,Created on |
           | Display   |  3 , 6 ,9                                                                     |

  Scenario Outline: I should be able to choose any filter option with specific result
  Given   I am on the book category page
  When    I click on "<filter>"
  And     I click on "<option>"
  Then    I am able to choose any filter option from the list
  And     I am able to see "<result>"
  Examples:
           |filter |option           |result                                                          |
           |sort by|Name: A to Z     |product is sorted with product name in alphabetical order A to Z|
           |sort by|Name: Z to A     |product is sorted with product name in alphabetical order Z to A|
           |sort by|Price:Low to High|product is sorted with  price in ascending order                |
           |sort by|Price:High to Low|product is sorted with  price in descending order               |
           |sort by|Created on       |Recently added  product should be displayed first               |
           |Display|3                |3 products in a page                                            |
           |Display|6                |6 products in a page                                            |
           |Display|9                |9 products in a page                                            |

  Scenario Outline: Verify that viewmode icons are clickable
  Given    I am on the Books category page
  When     I click on <"viewModes">
  Then     I am able to click viewmodes
  Examples:
           |viewModes|
           |Grid|
           |List|

  Scenario Outline: Verify that products are displayed as per selected icon
  Given     I am on the Books category page
  When 	    I select <"icon">
  Then      Products are displayed as per selected icon
  Examples:
           |icon|
           |Grid|
           |List|




