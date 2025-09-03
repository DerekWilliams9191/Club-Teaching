# Linux Command Line Fundamentals

## Getting Started

The Linux command line (also called terminal or shell) is a text-based interface for interacting with your computer. While it might seem intimidating at first, it's incredibly powerful and efficient once you learn the basics.

## Essential Navigation Commands

### Moving Around

```bash
pwd                 # Print working directory (where am I?)
ls                  # List files and directories
ls -la              # List with details (permissions, size, date)
cd /home/user       # Change to specific directory
cd ..               # Go up one directory
cd ~                # Go to home directory
```

### Working with Files

```bash
touch myfile.txt    # Create empty file
cp file1.txt file2.txt    # Copy file
mv oldname.txt newname.txt    # Move/rename file
rm file.txt         # Delete file
mkdir mydir         # Create directory
rmdir mydir         # Remove empty directory
rm -rf mydir        # Remove directory and contents (be careful!)
```

## Understanding Bash

Bash (Bourne Again Shell) is the default shell on most Linux systems. It's both a command interpreter and a programming language.

### Basic Bash Features

```bash
# View command history
history

# Search previous commands
Ctrl+R

# Auto-complete commands and filenames
Tab key

# Clear screen
clear
```

### Environment Variables

```bash
echo $HOME          # Display home directory path
echo $PATH          # Display executable search paths
export MY_VAR="hello"    # Create environment variable
```

## Introduction to Bash Scripts

Bash scripts are files containing a series of commands that execute automatically.

### Creating Your First Script

1. Create a new file:

```bash
touch hello_world.sh
```

2. Edit with a text editor like nano:

```bash
nano hello_world.sh
```

3. Add this content:

```bash
#!/bin/bash
# This is a comment
echo "Hello, World!"
echo "Today's date is: $(date)"
echo "Current user: $USER"
```

4. Make it executable and run:

```bash
chmod +x hello_world.sh
./hello_world.sh
```

### Script Basics

```bash
# Variables (no spaces around =)
name="Alice"
echo "Hello, $name"

# Command substitution
current_dir=$(pwd)
echo "I'm in: $current_dir"

# Simple if statement
if [ -f "myfile.txt" ]; then
    echo "File exists"
else
    echo "File not found"
fi
```

## Working with Python

Python is commonly pre-installed on Linux systems and integrates well with the command line.

### Python Basics

```bash
python3 --version   # Check Python version
python3             # Start interactive Python shell
python3 script.py   # Run a Python script
```

### Example Python Script

Create a file called `system_info.py`:

```python
#!/usr/bin/env python3
import os
import sys
import subprocess

print(f"Python version: {sys.version}")
print(f"Current directory: {os.getcwd()}")
print(f"Username: {os.getenv('USER')}")

# Run shell command from Python
result = subprocess.run(['ls', '-l'], capture_output=True, text=True)
print("Directory contents:")
print(result.stdout)
```

Make it executable and run:

```bash
chmod +x system_info.py
./system_info.py
```

## Package Managers

Package managers help you install, update, and remove software easily.

### APT (Debian/Ubuntu)

```bash
sudo apt update              # Update package list
sudo apt upgrade             # Upgrade installed packages
sudo apt install python3-pip    # Install a package
sudo apt remove package-name     # Remove a package
sudo apt search keyword          # Search for packages
```

### YUM/DNF (Red Hat/Fedora)

```bash
sudo dnf update              # Update system
sudo dnf install python3-pip    # Install package
sudo dnf remove package-name     # Remove package
sudo dnf search keyword          # Search packages
```

### Python Package Manager (pip)

```bash
pip3 install requests        # Install Python package
pip3 list                    # List installed packages
pip3 uninstall package-name  # Remove package
```

## Practical Example: Log Analysis Script

Let's create a practical script that combines everything we've learned:

```bash
#!/bin/bash

# log_analyzer.sh - Analyze system logs

LOG_FILE="/var/log/syslog"
OUTPUT_FILE="log_analysis.txt"

echo "=== System Log Analysis ===" > $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo "Analyzed by: $USER" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file not found at $LOG_FILE"
    exit 1
fi

# Count total lines
total_lines=$(wc -l < "$LOG_FILE")
echo "Total log entries: $total_lines" >> $OUTPUT_FILE

# Find error entries
error_count=$(grep -i "error" "$LOG_FILE" | wc -l)
echo "Error entries: $error_count" >> $OUTPUT_FILE

# Get last 10 entries
echo "" >> $OUTPUT_FILE
echo "=== Last 10 Log Entries ===" >> $OUTPUT_FILE
tail -10 "$LOG_FILE" >> $OUTPUT_FILE

echo "Analysis complete! Results saved to $OUTPUT_FILE"

# Optional: Use Python to create a summary
python3 << EOF
import json
from datetime import datetime

summary = {
    'analysis_date': datetime.now().isoformat(),
    'total_entries': $total_lines,
    'error_count': $error_count,
    'error_percentage': round(($error_count / $total_lines) * 100, 2)
}

with open('log_summary.json', 'w') as f:
    json.dump(summary, f, indent=2)

print(f"Summary: {summary['error_percentage']}% of logs contain errors")
EOF
```

## Essential Tips for Beginners

### Safety First

- Always be careful with `rm -rf` - it permanently deletes files
- Test scripts in a safe directory first
- Use `ls` to verify before deleting multiple files

### Getting Help

```bash
man command         # Read manual page for a command
command --help      # Quick help for most commands
which command       # Find location of a command
type command        # Show command type and location
```

### Useful Keyboard Shortcuts

- `Ctrl+C`: Stop current command
- `Ctrl+Z`: Suspend current command
- `Ctrl+D`: Exit current shell
- `↑/↓ arrows`: Navigate command history
- `Tab`: Auto-complete commands and filenames

## Next Steps

Once you're comfortable with these basics:

1. Learn text processing with `grep`, `sed`, and `awk`
2. Explore file permissions and ownership
3. Study process management (`ps`, `top`, `kill`)
4. Practice with pipes and redirection (`|`, `>`, `>>`)
5. Learn about system services and cron jobs

The command line becomes more powerful the more you use it. Start with simple commands and gradually work your way up to more complex scripts and automation tasks.
