# SYNTAX TEST "text.gherkin.cukebench" "English keywords and structure"
@smoke @wip
# <- entity.name.tag.gherkin
#      ^^^^ entity.name.tag.gherkin
Feature: Shopping cart
# <- keyword.control.section.gherkin
#      ^ punctuation.separator.key-value.gherkin
#        ^^^^^^^^^^^^^ entity.name.section.gherkin
  # a comment
# ^^^^^^^^^^^ comment.line.number-sign.gherkin

  Background:
# ^^^^^^^^^^ keyword.control.section.gherkin
    Given an empty cart
#   ^^^^^^ keyword.control.step.gherkin
#         ^^^^^^^^^^^^^ string.unquoted.step.gherkin

  Rule: Totals
# ^^^^ keyword.control.section.gherkin

  Scenario Outline: buy <count> items
# ^^^^^^^^^^^^^^^^ keyword.control.section.gherkin
#                       ^^^^^^^ variable.parameter.outline.gherkin
    When the user "alice" adds <count> items costing 2.5
#   ^^^^^ keyword.control.step.gherkin
#                 ^^^^^^^ string.quoted.double.gherkin
#                              ^^^^^^^ variable.parameter.outline.gherkin
#                                                    ^^^ constant.numeric.gherkin
    And the total is 'ok'
#   ^^^^ keyword.control.step.gherkin
#                    ^^^^ string.quoted.single.gherkin
    But nothing else
#   ^^^^ keyword.control.step.gherkin
    * a star step
#   ^^ keyword.control.step.gherkin
    Then the response is
#   ^^^^^ keyword.control.step.gherkin
      """json
#     ^^^ punctuation.definition.string.begin.gherkin
#        ^^^^ entity.name.type.media-type.gherkin
      {"Given": "not a keyword here"}
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.block.gherkin
#                                    - keyword.control.step.gherkin
      """
#     ^^^ punctuation.definition.string.end.gherkin
    And the log is
      ```
#     ^^^ punctuation.definition.string.begin.gherkin
      Feature: inside a doc string
#     ^^^^^^^^ string.unquoted.block.gherkin
#     - keyword.control.section.gherkin
      ```
#     ^^^ punctuation.definition.string.end.gherkin

    Examples:
#   ^^^^^^^^ keyword.control.section.gherkin
      | count | note  |
#     ^ punctuation.separator.table.gherkin
#       ^^^^^ string.unquoted.table.cell.gherkin
      | 1     | a\|b  |
#               ^ string.unquoted.table.cell.gherkin
#                ^^ constant.character.escape.gherkin
