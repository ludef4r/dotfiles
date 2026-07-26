# Setup

This directory contains the installation scripts used to recreate my development environment.

Each script is responsible for a specific part of the system, making the setup modular and easier to maintain.

## Structure

| Script           | Purpose                                                              |
| ---------------- | -------------------------------------------------------------------- |
| `setup.sh`       | Entry point that executes the complete setup process.                |
| `development.sh` | Installs development tools.                                          |
| `fonts.sh`       | Installs the fonts used throughout the system.                       |
| `utilities.sh`   | Installs command-line utilities.                                     |

## Design

The setup is split into multiple scripts instead of one large file to keep responsibilities separated.

`setup.sh` determines the root directory of the repository and exposes it through the `REPO_ROOT` environment variable. Child scripts use this variable when creating symbolic links to the configuration files.

Configuration files are not copied into `~/.config`. Instead, symbolic links are created so that the files inside this repository remain the single source of truth.

## Usage

Run the complete setup with:

```bash
./setup.sh
```

Individual scripts are intended to be executed through `setup.sh`, as they rely on the environment prepared by the main script.

