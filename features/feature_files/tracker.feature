@tracker
Feature: Rejections tracker breakdown chart

  As a member of the editorial department
  I need to be able to see the rejections breakdown chart for a selected brand

  Scenario Outline: I am able to see the in-house brands post login

    Given I am on the rejections breakdown page for bmc as a <role>

    Examples:
      | role      |
      | user      |
      | superuser |