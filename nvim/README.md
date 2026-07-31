# Neovim

## Purpose

This configuration provides a lightweight and maintainable development environment focused on programming.
The goal is to build the editor incrementally while understanding every component that is added, avoiding unnecessary plugins and keeping the configuration easy to modify over time.

## Design Principles

- Keep startup time low.
- Keep the configuration modular.
- Understand every component before adding it.
- Only include plugins that solve a recurring problem.

## Configuration Structure

| Path             | Description                                         |
| ---------------- | --------------------------------------------------- |
| `init.lua`       | Entry point for the configuration.                  |
| `lua/config/`    | Core Neovim configuration.                          |
| `lua/plugins/`   | Individual plugin specifications and configuration. |
| `lazy-lock.json` | Plugin version lockfile managed by lazy.nvim.       |

## Core Configuration

| File        | Description                                           |
| ----------- | ----------------------------------------------------- |
| `set.lua`   | Editor options.                                       |
| `remap.lua` | Core Neovim keybindings.                              |
| `lazy.lua`  | lazy.nvim bootstrap and plugin manager configuration. |
| `init.lua`  | Loads the core configuration modules.                 |

## Planned Features

### Editing

- Comfortable default editor settings.
- Consistent indentation behavior.
- Persistent undo history.
- System clipboard integration.

### Navigation

- Quickly find files.
- Navigate between open files.
- Efficient window navigation.

### Completion

- Intelligent code completion.
- Automatic imports when supported.
- Function signature assistance.

### Language Support

- Language Server Protocol integration.
- Syntax highlighting.
- Diagnostics.
- Code formatting.

### User Interface

- Clean and readable appearance.
- Useful editor status information.
- Consistent icons and highlighting.

## Future Improvements

Additional plugins and features will only be added after identifying a real need during daily development.
