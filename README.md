# Cukebench for VS Code

Run, navigate and manage [Cucumber](https://cucumber.io/) tests in VS Code, for step definitions in
any language and with no configuration.

Cukebench is an independent project; it is not affiliated with or endorsed by the Cucumber team or
SmartBear. It is the VS Code counterpart of the
[Cucumber JetBrains plugin](https://github.com/Fangzhengjie/cucumber-jetbrains-plugin).

> Status: planning. Nothing is published yet.

## Why another Cucumber extension

The existing extensions cover editing `.feature` files well (highlighting, completion, go to step
definition, undefined step warnings, formatting). Cukebench focuses on what they leave out:

- **Run and debug** features, scenarios and example rows from the editor, with results in the
  VS Code Testing view and the last result on each line.
- **Step definition → feature navigation**: usage counts on definitions, Ctrl+click from a pattern
  to the steps using it, *Find Step Usages*.
- **Rename a step** in every feature file and its definition at once.
- **Find and delete unused step definitions**.
- **Browse and filter features** by text or tag expression (`@smoke and not @wip`) and run the
  selection.
- **No glob settings**: step definitions are found anywhere in the workspace.

Step definitions are recognised for Java, Kotlin, Groovy, Scala, JavaScript/TypeScript, Python
(behave, pytest-bdd), Ruby, Go, Rust, C# and C++.

## Architecture (planned)

- **Language server**: the IDE-independent `core` of the JetBrains plugin (step definition
  recognition, Cucumber Expression / regex matching, Gherkin dialects, formatter, tag expressions,
  snippets, renames, run commands, Cucumber Messages) wrapped in an LSP server written in Kotlin.
  It provides navigation in both directions, completion, diagnostics, quick fixes, rename and
  formatting.
- **VS Code extension** (TypeScript): starts the server, and implements what LSP does not cover:
  running through the Testing API (Maven, Gradle, cucumber-js, cucumber-ruby, behave, ...), live
  results from Cucumber Messages, the features view with tag filtering, and gutter results.

## First version

1. `.feature` highlighting in any Gherkin language.
2. Step → definition and definition → steps navigation.
3. Undefined and ambiguous step diagnostics.
4. Run a feature or scenario through the Testing API (Maven and cucumber-js first).

## License

[Apache License 2.0](LICENSE)
