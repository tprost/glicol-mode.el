Feature: Glicol mode
  As a user of the Glicol music language
  I want to have syntax highlighting and indentation support
  So that I can edit Glicol files more easily

  Scenario: Syntax highlighting
    Given I visit "example.glicol"
    Then I should see the following faces:
      | text                | face                    |
      | "~gate"             | font-lock-function-name-face |
      | ">>"                | font-lock-keyword-face  |
      | "_60"               | font-lock-constant-face |

  Scenario: Indentation
    # Fill in indentation tests based on Glicol's indentation rules
