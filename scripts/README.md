# Setup

This directory contains the installation scripts used to recreate my development environment.

Each script is responsible for a specific part of the system, making the setup modular and easier to maintain.

## Structure

| Script           | Purpose                                                              |
| ---------------- | -------------------------------------------------------------------- |
| `setup.sh`       | Entry point that executes the complete setup process.                |
| `display.sh`     | Installs and configures display-related software.                    |
| `development.sh` | Installs development tools.                                          |
| `fonts.sh`       | Installs the fonts used throughout the system.                       |

## Design

The setup is split into multiple scripts instead of one large file to keep responsibilities separated.

`setup.sh` determines the repository's location and defines the shared environment variables required by the other setup scripts.

Configuration files are not copied into the destination configured. Instead, symbolic links are created so that the files inside this repository remain the single source of truth.

## Usage

Run the complete setup with:

```bash
./setup.sh
```

Individual scripts are intended to be executed through `setup.sh`, as they rely on the environment prepared by the main script.

