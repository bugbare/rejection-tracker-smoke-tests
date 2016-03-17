@tracker
Feature: Rejections tracker breakdown chart

  As a member of the editorial department
  I need to be able to see the rejections breakdown chart for a selected brand

  Scenario Outline: I am able to see the rejections breakdown page correctly

    Given I am on the rejections breakdown page for bmc as a <role>
    Then the rejections tracker page is displayed correctly

    Examples:
      | role      |
      | user      |
      | superuser |

    @jovi
  Scenario Outline: I am able to see filtered results after selecting a journal from the dropdown filter

    Given I am on the rejections breakdown page for bmc as a <role>
    When I select a journal from the list
    Then the tracker page is updated to display results for the selected journal

    Examples:
      | role      |
      | user      |
      | superuser |