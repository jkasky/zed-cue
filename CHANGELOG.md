# Changelog

All notable changes to this extension are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [0.0.7] - 2026-10-17

### Changed

- Update the grammar to [tree-sitter-cue v0.2.0](https://github.com/cue-lang/tree-sitter-cue/releases/tag/v0.2.0),
  which moved to `cue-lang/tree-sitter-cue`. It parses the syntax of CUE
  v0.18: postfix aliases, the spread operator, closed literals, and the
  `try` and functions experiments ([#9]).

### Added

- Highlight the new syntax: the spread operator (`#A...`), postfix aliases
  (`~`), closed literals (`#{...}`, `#[...]`), `try`, `else`, `otherwise`,
  `fallback`, `func` and `->` ([#9]).
- Highlight `self` as a special variable.
- Highlight function parameters and labeled arguments ([#9]).

### Fixed

- Highlight uncalled builtins, as in `x: len`, as functions again ([#9]).
- Highlight field names, selectors and called functions, which showed as
  plain variables.
- Stop highlighting the comparison operators `<` and `>` as brackets.

## [0.0.6] - 2026-08-08

### Fixed

- Start the language server without the `-vv` flag, which `cue lsp` no
  longer accepts ([#8], by [@birksl](https://github.com/birksl)).

### Added

- Document the required CUE version ([#4], by
  [@pavles6](https://github.com/pavles6)) and how to disable the language
  server.

## [0.0.4] - 2025-01-04

### Fixed

- Start the language server with `cue lsp`, as CUE v0.11.0 and later
  require. The separate `cuepls` binary no longer exists ([#3], by
  [@KimNorgaard](https://github.com/KimNorgaard)).

## [0.0.3] - 2024-09-16

### Added

- Language server support through `cuepls`.

## [0.0.2] - 2024-04-15

### Changed

- Move the manifest to `extension.toml`.

### Fixed

- Include optional fields in the outline.
- Show list imports in the outline when the last import has no comma.

## [0.0.1] - 2024-03-23

### Added

- Syntax highlighting, bracket matching, indentation and outline for CUE,
  using [tree-sitter-cue](https://github.com/eonpatapon/tree-sitter-cue).

[#3]: https://github.com/jkasky/zed-cue/pull/3
[#4]: https://github.com/jkasky/zed-cue/pull/4
[#8]: https://github.com/jkasky/zed-cue/pull/8
[#9]: https://github.com/jkasky/zed-cue/issues/9
[0.0.7]: https://github.com/jkasky/zed-cue/compare/v0.0.6...v0.0.7
[0.0.6]: https://github.com/jkasky/zed-cue/compare/v0.0.4...v0.0.6
[0.0.4]: https://github.com/jkasky/zed-cue/compare/v0.0.3...v0.0.4
[0.0.3]: https://github.com/jkasky/zed-cue/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/jkasky/zed-cue/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/jkasky/zed-cue/releases/tag/v0.0.1
