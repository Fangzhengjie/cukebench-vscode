# SYNTAX TEST "text.gherkin.cukebench" "Keywords of other Gherkin languages"
# language: zh-CN
# <- comment.line.number-sign.gherkin punctuation.definition.comment.gherkin
# ^^^^^^^^ keyword.other.language.gherkin
#           ^^^^^ constant.language.dialect.gherkin
功能: 购物车
# <- keyword.control.section.gherkin
  场景: 下单
# ^^ keyword.control.section.gherkin
    假如用户已登录
#   ^^ keyword.control.step.gherkin
#     ^^^^^ string.unquoted.step.gherkin
    当 用户下单
#   ^ keyword.control.step.gherkin
#    ^^^^^ string.unquoted.step.gherkin
    那么订单已创建
#   ^^ keyword.control.step.gherkin

Funktionalität: Warenkorb
# <- keyword.control.section.gherkin
  Szenariogrundriss: kaufen
# ^^^^^^^^^^^^^^^^^ keyword.control.section.gherkin
    Angenommen der Warenkorb ist leer
#   ^^^^^^^^^^^ keyword.control.step.gherkin
    Wenn ich <n> Artikel kaufe
#   ^^^^^ keyword.control.step.gherkin
#            ^^^ variable.parameter.outline.gherkin
