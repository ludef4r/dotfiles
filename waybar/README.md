# Waybar

## Purpose

Waybar provides quick access to the information I check most often while using my computer.
The goal is to make common system information visible at a glance, reducing the need to open a terminal or system utilities for simple checks.

## Goals

The bar should provide at least the following information:

* Workspaces
* Current date
* Current time
* Audio status
* Network status
* Battery status

The layout should remain clean, readable, and informative without becoming visually distracting.

## Configuration Structure

| Path        | Description                                              |
| ----------- | -------------------------------------------------------- |
| `config`    | Main Waybar configuration.                               |
| `modules/`  | Individual module configurations.                        |
| `style.css` | Global stylesheet and entry point for all module styles. |
| `styles/`   | Module-specific stylesheets imported by `style.css`.     |

## Planned Features

### Workspaces

* Display all active workspaces.
* Show an icon representing the primary application assigned to each workspace.
* Display the name of the currently focused application next to the workspace list.

### Date and Time

* Always display the current date and time.
* When the date is hovered, display a monthly calendar.

### Network

* Display the current network connection status.
* Indicate whether the connection is Wi-Fi or Ethernet.
* On hover, display the name (SSID) of the connected Wi-Fi network.

### Audio

* Display the current volume.
* Indicate whether audio is muted.
* Indicate whether the output device is internal or external.
* On hover, display the name of the active output device.

### Battery

* Display the current battery percentage.
* Indicate whether the battery is charging or discharging.
* On hover, display the estimated remaining battery time.

## Design

* The bar will be positioned at the top of the screen.
* It should not touch application windows, leaving a small gap for a cleaner appearance.
* Information should be immediately understandable without unnecessary visual clutter.

## Future Improvements

Additional functionality will be added as new needs arise during daily use.

## Current Status

- [X] Core Modules
    - [X] Workspaces
    - [X] Focused Window Title
    - [X] Date
    - [X] Time
    - [X] Network
    - [X] Audio
    - [X] Battery

- [ ] Styling
    - [ ] Bar
    - [ ] Workspaces
    - [ ] Focused Window Title
    - [ ] Date
    - [ ] Time
    - [ ] Network
    - [ ] Audio
    - [ ] Battery
