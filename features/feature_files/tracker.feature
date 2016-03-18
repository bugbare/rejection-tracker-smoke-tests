@tracker
Feature: Rejections tracker chart page

  As a member of the editorial department
  I need to be able to see the rejections tracker chart for a selected brand

  Scenario Outline: I am able to see the rejections tracker page correctly

    Given I am on the rejections tracker page as a <role>
    Then the rejections tracker page is displayed correctly

    Examples:
      | role      |
      | user      |
      | superuser |

  Scenario Outline: I am able to see filtered results after selecting a journal from the dropdown filter

    Given I am on the rejections tracker page as a <role>
    When I select a journal from the list
    Then the tracker page is updated to display results for the selected journal

    Examples:
      | role      |
      | user      |
      | superuser |