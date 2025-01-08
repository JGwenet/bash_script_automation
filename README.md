# bash_script_automation

This project contains a set of Bash scripts designed to automate common administrative tasks. The scripts included in this project are:

1. **cleanup_logs.sh**: Automates the cleanup of log files by checking specified directories and removing files older than a certain number of days. This script utilizes conditionals and loops to efficiently manage log files.

2. **backup_data.sh**: Handles the backup of important data by copying specified directories to a designated backup location. It includes conditionals to verify the existence of source directories and loops to process multiple directories.

3. **update_system.sh**: Automates system updates by checking for available updates and installing them. This script interacts with the package manager using shell commands and employs conditionals to manage different scenarios.

## Prerequisites

- Bash shell
- Basic understanding of shell commands
- Necessary permissions to execute scripts and perform administrative tasks

## Usage

To use the scripts, navigate to the `scripts` directory and execute the desired script. For example:

```bash
cd scripts
./cleanup_logs.sh
```

## Examples of Common Administrative Tasks

- **Cleaning up log files**: Run `cleanup_logs.sh` to remove old log files and free up disk space.
- **Backing up important data**: Use `backup_data.sh` to create backups of critical directories.
- **Updating the system**: Execute `update_system.sh` to ensure your system is up to date with the latest packages.
