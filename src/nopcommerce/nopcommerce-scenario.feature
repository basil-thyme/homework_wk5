Feature: Demo Nopcommerce's top menu acceptance criteria
  As a user, I want to check acceptance criteria of nopcommerce top menu

  Background: User is on given URL: https://demo.nopcommerce.com
    Given    User is on the home page

  Scenario: Verify that user can navigate to Books category
    When     Click on Books tab on Top Menu
    Then     User is navigated to Books Category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    Given    User is on the Books category page
    When     Click on Books tab on Top Menu
    And      Check filters and list Tab
    Then     Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on Book Category page
    Given   User is on the Books category page
    When    Check 'Sort by' filter is present
    Then    'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book Category page
    Given   User is on the Books category page
    When    Check 'Display' filter is present
    Then    'Display' filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given   User is on the Books category page
    When    Check 'Grid' tab is present
    Then    'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given   User is on the Books category page
    When    Check 'List' tab is present
    Then    'List' tab is available on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given   User is on the Books category page
    When    Click on 'Sort by' filter
    And     Check that 'Name: A to Z' selection is present
    Then    'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: Z to A' selection is present in 'Sort by' filter
    Given   User is on the Books category page
    When    Click on 'Sort by' filter
    And     Check that 'Name: Z to A' selection is present
    Then    'Name: Z to A' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Price : Low to High' in 'Sort by' filter
    Given   User is on the Books category page
    When    Click on 'Sort by' filter
    And     Check that 'Low to High' selection is present
    Then    'Low to High' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Price : High to Low' in 'Sort by' filter
    Given   User is on the Books category page
    When    Click on 'Sort by' filter
    And     Check that 'High to Low' selection is present
    Then    'High to Low' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Created on' in 'Sort by' filter
    Given   User is on the Books category page
    When    Click on 'Sort by' filter
    And     Check that 'Created on' selection is present
    Then    'Created on' selection is present in 'Sort by' filter

  Scenario: Verify that user can see '3' in 'Display' filter
    Given   User is on the Books category page
    When    Click on 'Display' filter
    And     Check that '3' selection is present
    Then    '3' selection is present in 'Display' filter

  Scenario: Verify that user can see '6' in 'Display' filter
    Given   User is on the Books category page
    When    Click on 'Display' filter
    And     Check that '6' selection is present
    Then    '6' selection is present in 'Display' filter

  Scenario: Verify that user can see '9' in 'Display' filter
    Given   User is on the Books category page
    When    Click on 'Display' filter
    And     Check that '9' selection is present
    Then    '9' selection is present in 'Display' filter