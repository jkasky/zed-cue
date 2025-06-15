# Zed CUE

CUE language support for Zed

- [cue-lang](https://github.com/cue-lang/cue)
- [tree-sitter-cue](https://github.com/eonpatapon/tree-sitter-cue)

## Features

By default, this extension provides:
- Syntax highlighting
- Basic language support (formatting only)

## Language Support

Basic CUE language support is provided through CUE's built-in LSP server `cue
lsp`. The LSP server currently only provides auto-formatting. Because the LSP
server is still under active development, you may encounter issues like [this
one](https://github.com/jkasky/zed-cue/issues/5). If you encounter any issues,
you can disable the language server in your settings.

### Disabling the CUE Language Server

To disable the language server and use only syntax highlighting, add the
following to your Zed settings:

```json
{
  "languages": {
    "CUE": {
      "enable_language_server": false
    }
  }
}
```

### Requirements

For all LSP functions to work properly, this extension requires an installed CUE
binary of version `0.11.0` or newer. The extension will use the CUE binary found
in your `$PATH`. If CUE is not found in your `$PATH`, the latest available
version will be automatically downloaded and installed.

### Trade-offs

- **LSP Disabled (Default)**: Syntax highlighting only
- **LSP Enabled**: Full IDE features but potentially unstable due to ongoing LSP development
