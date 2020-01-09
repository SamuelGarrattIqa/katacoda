Feature: Addition

  Ruby should be able to add two objects and see their result

  Scenario: Add integers
    When I add 1 + 1
    Then the result should be 2
    
  Scenario: Add characters
    When I add '1' + '1'
    Then the result should be 11
